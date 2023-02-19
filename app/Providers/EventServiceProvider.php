<?php

namespace App\Providers;

use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

use App\Models\User; //panggil model User
use App\Observers\UserObserver; //panggil observer UserObserver
use App\Models\Recipe; //panggil model recipe
use App\Observers\RecipeObserver; //panggil observer recipeobserver
use App\Models\Tool; //panggil model tool
use App\Observers\ToolObserver; //panggil observer toolobserver
use App\Models\Ingredient; //panggil model ingredient
use App\Observers\IngredientObserver; //panggil observer IngredientObserver


class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        User::observe(UserObserver::class);
        Recipe::observe(RecipeObserver::class);
        Tool::observe(ToolObserver::class);
        Ingredient::observe(IngredientObserver::class);
    }
}
