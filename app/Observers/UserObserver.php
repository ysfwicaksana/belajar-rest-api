<?php

namespace App\Observers;

use App\Models\User;
use App\Models\Log; //panggil model log
class UserObserver
{

   

    public function creating(User $user){
        $user->last_login = now();
    }
    /**
     * Handle the User "created" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function created(User $user)
    {   
        //simpan ke dalam tabel log, ini dilakukan setelah user berhasil registrasi
        Log::create([
            'module' => 'register',
            'action' => 'registrasi akun',
            'useraccess' => $user->email
        ]);
    }

    /**
     * Handle the User "updated" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function updated(User $user)
    {
        //simpan ke dalam tabel log, ini dilakukan setelah user berhasil disunting 
        Log::create([
            'module' => 'sunting',
            'action' => 'sunting akun',
            'useraccess' => $user->email
        ]);
    }

    public function deleting(User $user) {
        Log::create([
            'module' => 'delete',
            'action' => 'delete akun',
            'useraccess' => $user->email
        ]);
    }

    /**
     * Handle the User "deleted" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function deleted(User $user)
    {
       
    }

    /**
     * Handle the User "restored" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function restored(User $user)
    {
        //
    }

    /**
     * Handle the User "force deleted" event.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    public function forceDeleted(User $user)
    {
        //
    }
}
