<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResepTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resep', function (Blueprint $table) {
            $table->id('idresep');
            $table->string('judul');
            $table->string('gambar');
            $table->text('cara_pembuatan')->nullable(); //bisa dikosongkan
            $table->string('video')->nullable(); //bisa dikosongkan
            $table->string('user_email'); //bisa dikosongkan
            $table->foreign('user_email')->references('email')->on('user')->onDelete('cascade')->onUpdate('cascade'); // buat relasi pada kolom "user_email" yang tersambung dengan kolom "email" di tabel user
            $table->enum('status_resep',['draft','submit','publish','unpublished'])->default('draft');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resep');
    }
}
