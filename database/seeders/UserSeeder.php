<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User; //panggil model user
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //masukkan data user admin ke database
        User::create([
            'nama' => 'Administrator',
            'email' => 'admin@admin.com',
            'role' => 'admin',
            'password' => 'admin', //isi password akan di hash dengan algoritma bcrypt,
            'status' => 'aktif',
            'last_login' => now() //built in library untuk menampilkan tanggal saat ini
        ]);

        //panggil UserFactory, generate sebanyak 50 data
        User::factory()->count(50)->create();
    }
}
