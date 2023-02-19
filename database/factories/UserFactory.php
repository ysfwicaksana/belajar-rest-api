<?php

namespace Database\Factories;

use App\Models\User; //panggil model user
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        //sesuaikan isi dengan kolom pada tabel user
        return [
            'nama' => $this->faker->name(), //generate nama
            'email' => $this->faker->unique()->safeEmail, //generate format email
            'role' => 'user',
            'password' => 'user', //samakan password untuk semua user
            'status' => 'aktif',
            'last_login' => now()
        ];
    }
}
