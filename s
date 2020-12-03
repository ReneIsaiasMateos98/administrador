[33mcommit 179254326a7f35823db74613dc5cda5ffaa03b41[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Canserbero <rene_mateos@codewaymx.com>
Date:   Thu Dec 3 10:24:43 2020 -0600

    Ahora se subieron todos los archivos del proyecto

[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mnew file mode 100644[m
[1mindex 0000000..6537ca4[m
[1m--- /dev/null[m
[1m+++ b/.editorconfig[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32mroot = true[m
[32m+[m
[32m+[m[32m[*][m
[32m+[m[32mcharset = utf-8[m
[32m+[m[32mend_of_line = lf[m
[32m+[m[32minsert_final_newline = true[m
[32m+[m[32mindent_style = space[m
[32m+[m[32mindent_size = 4[m
[32m+[m[32mtrim_trailing_whitespace = true[m
[32m+[m
[32m+[m[32m[*.md][m
[32m+[m[32mtrim_trailing_whitespace = false[m
[32m+[m
[32m+[m[32m[*.{yml,yaml}][m
[32m+[m[32mindent_size = 2[m
[1mdiff --git a/.env.example b/.env.example[m
[1mnew file mode 100644[m
[1mindex 0000000..ac74863[m
[1m--- /dev/null[m
[1m+++ b/.env.example[m
[36m@@ -0,0 +1,46 @@[m
[32m+[m[32mAPP_NAME=Laravel[m
[32m+[m[32mAPP_ENV=local[m
[32m+[m[32mAPP_KEY=[m
[32m+[m[32mAPP_DEBUG=true[m
[32m+[m[32mAPP_URL=http://localhost[m
[32m+[m
[32m+[m[32mLOG_CHANNEL=stack[m
[32m+[m
[32m+[m[32mDB_CONNECTION=mysql[m
[32m+[m[32mDB_HOST=127.0.0.1[m
[32m+[m[32mDB_PORT=3306[m
[32m+[m[32mDB_DATABASE=laravel[m
[32m+[m[32mDB_USERNAME=root[m
[32m+[m[32mDB_PASSWORD=[m
[32m+[m
[32m+[m[32mBROADCAST_DRIVER=log[m
[32m+[m[32mCACHE_DRIVER=file[m
[32m+[m[32mQUEUE_CONNECTION=sync[m
[32m+[m[32mSESSION_DRIVER=file[m
[32m+[m[32mSESSION_LIFETIME=120[m
[32m+[m
[32m+[m[32mREDIS_HOST=127.0.0.1[m
[32m+[m[32mREDIS_PASSWORD=null[m
[32m+[m[32mREDIS_PORT=6379[m
[32m+[m
[32m+[m[32mMAIL_MAILER=smtp[m
[32m+[m[32mMAIL_HOST=smtp.mailtrap.io[m
[32m+[m[32mMAIL_PORT=2525[m
[32m+[m[32mMAIL_USERNAME=null[m
[32m+[m[32mMAIL_PASSWORD=null[m
[32m+[m[32mMAIL_ENCRYPTION=null[m
[32m+[m[32mMAIL_FROM_ADDRESS=null[m
[32m+[m[32mMAIL_FROM_NAME="${APP_NAME}"[m
[32m+[m
[32m+[m[32mAWS_ACCESS_KEY_ID=[m
[32m+[m[32mAWS_SECRET_ACCESS_KEY=[m
[32m+[m[32mAWS_DEFAULT_REGION=us-east-1[m
[32m+[m[32mAWS_BUCKET=[m
[32m+[m
[32m+[m[32mPUSHER_APP_ID=[m
[32m+[m[32mPUSHER_APP_KEY=[m
[32m+[m[32mPUSHER_APP_SECRET=[m
[32m+[m[32mPUSHER_APP_CLUSTER=mt1[m
[32m+[m
[32m+[m[32mMIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"[m
[32m+[m[32mMIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mnew file mode 100644[m
[1mindex 0000000..967315d[m
[1m--- /dev/null[m
[1m+++ b/.gitattributes[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m* text=auto[m
[32m+[m[32m*.css linguist-vendored[m
[32m+[m[32m*.scss linguist-vendored[m
[32m+[m[32m*.js linguist-vendored[m
[32m+[m[32mCHANGELOG.md export-ignore[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..0f7df0f[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,12 @@[m
[32m+[m[32m/node_modules[m
[32m+[m[32m/public/hot[m
[32m+[m[32m/public/storage[m
[32m+[m[32m/storage/*.key[m
[32m+[m[32m/vendor[m
[32m+[m[32m.env[m
[32m+[m[32m.env.backup[m
[32m+[m[32m.phpunit.result.cache[m
[32m+[m[32mHomestead.json[m
[32m+[m[32mHomestead.yaml[m
[32m+[m[32mnpm-debug.log[m
[32m+[m[32myarn-error.log[m
[1mdiff --git a/.styleci.yml b/.styleci.yml[m
[1mnew file mode 100644[m
[1mindex 0000000..1db61d9[m
[1m--- /dev/null[m
[1m+++ b/.styleci.yml[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32mphp:[m
[32m+[m[32m  preset: laravel[m
[32m+[m[32m  disabled:[m
[32m+[m[32m    - unused_use[m
[32m+[m[32m  finder:[m
[32m+[m[32m    not-name:[m
[32m+[m[32m      - index.php[m
[32m+[m[32m      - server.php[m
[32m+[m[32mjs:[m
[32m+[m[32m  finder:[m
[32m+[m[32m    not-name:[m
[32m+[m[32m      - webpack.mix.js[m
[32m+[m[32mcss: true[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..e4bc97e[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1,79 @@[m
[32m+[m[32m<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>[m
[32m+[m
[32m+[m[32m<p align="center">[m
[32m+[m[32m<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>[m
[32m+[m[32m<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>[m
[32m+[m[32m</p>[m
[32m+[m
[32m+[m[32m## About Laravel[m
[32m+[m
[32m+[m[32mLaravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:[m
[32m+[m
[32m+[m[32m- [Simple, fast routing engine](https://laravel.com/docs/routing).[m
[32m+[m[32m- [Powerful dependency injection container](https://laravel.com/docs/container).[m
[32m+[m[32m- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.[m
[32m+[m[32m- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).[m
[32m+[m[32m- Database agnostic [schema migrations](https://laravel.com/docs/migrations).[m
[32m+[m[32m- [Robust background job processing](https://laravel.com/docs/queues).[m
[32m+[m[32m- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).[m
[32m+[m
[32m+[m[32mLaravel is accessible, powerful, and provides tools required for large, robust applications.[m
[32m+[m
[32m+[m[32m## Learning Laravel[m
[32m+[m
[32m+[m[32mLaravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.[m
[32m+[m
[32m+[m[32mIf you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.[m
[32m+[m
[32m+[m[32m## Laravel Sponsors[m
[32m+[m
[32m+[m[32mWe would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).[m
[32m+[m
[32m+[m[32m- **[Vehikl](https://vehikl.com/)**[m
[32m+[m[32m- **[Tighten Co.](https://tighten.co)**[m
[32m+[m[32m- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**[m
[32m+[m[32m- **[64 Robots](https://64robots.com)**[m
[32m+[m[32m- **[Cubet Techno Labs](https://cubettech.com)**[m
[32m+[m[32m- **[Cyber-Duck](https://cyber-duck.co.uk)**[m
[32m+[m[32m- **[British Software Development](https://www.britishsoftware.co)**[m
[32m+[m[32m- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**[m
[32m+[m[32m- **[DevSquad](https://devsquad.com)**[m
[32m+[m[32m- [UserInsights](https://userinsights.com)[m
[32m+[m[32m- [Fragrantica](https://www.fragrantica.com)[m
[32m+[m[32m- [SOFTonSOFA](https://softonsofa.com/)[m
[32m+[m[32m- [User10](https://user10.com)[m
[32m+[m[32m- [Soumettre.fr](https://soumettre.fr/)[m
[32m+[m[32m- [CodeBrisk](https://codebrisk.com)[m
[32m+[m[32m- [1Forge](https://1forge.com)[m
[32m+[m[32m- [TECPRESSO](https://tecpresso.co.jp/)[m
[32m+[m[32m- [Runtime Converter](http://runtimeconverter.com/)[m
[32m+[m[32m- [WebL'Agence](https://weblagence.com/)[m
[32m+[m[32m- [Invoice Ninja](https://www.invoiceninja.com)[m
[32m+[m[32m- [iMi digital](https://www.imi-digital.de/)[m
[32m+[m[32m- [Earthlink](https://www.earthlink.ro/)[m
[32m+[m[32m- [Steadfast Collective](https://steadfastcollective.com/)[m
[32m+[m[32m- [We Are The Robots Inc.](https://watr.mx/)[m
[32m+[m[32m- [Understand.io](https://www.understand.io/)[m
[32m+[m[32m- [Abdel Elrafa](https://abdelelrafa.com)[m
[32m+[m[32m- [Hyper Host](https://hyper.host)[m
[32m+[m[32m- [Appoly](https://www.appoly.co.uk)[m
[32m+[m[32m- [OP.GG](https://op.gg)[m
[32m+[m[32m- [云软科技](http://www.yunruan.ltd/)[m
[32m+[m
[32m+[m[32m## Contributing[m
[32m+[m
[32m+[m[32mThank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).[m
[32m+[m
[32m+[m[32m## Code of Conduct[m
[32m+[m
[32m+[m[32mIn order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).[m
[32m+[m
[32m+[m[32m## Security Vulnerabilities[m
[32m+[m
[32m+[m[32mIf you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.[m
[32m+[m
[32m+[m[32m## License[m
[32m+[m
[32m+[m[32mThe Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).[m
[1mdiff --git a/app/Console/Kernel.php b/app/Console/Kernel.php[m
[1mnew file mode 100644[m
[1mindex 0000000..69914e9[m
[1m--- /dev/null[m
[1m+++ b/app/Console/Kernel.php[m
[36m@@ -0,0 +1,41 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Console;[m
[32m+[m
[32m+[m[32muse Illuminate\Console\Scheduling\Schedule;[m
[32m+[m[32muse Illuminate\Foundation\Console\Kernel as ConsoleKernel;[m
[32m+[m
[32m+[m[32mclass Kernel extends ConsoleKernel[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * The Artisan commands provided by your application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $commands = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Define the application's command schedule.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function schedule(Schedule $schedule)[m
[32m+[m[32m    {[m
[32m+[m[32m        // $schedule->command('inspire')->hourly();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Register the commands for the application.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    protected function commands()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->load(__DIR__.'/Commands');[m
[32m+[m
[32m+[m[32m        require base_path('routes/console.php');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Exceptions/Handler.php b/app/Exceptions/Handler.php[m
[1mnew file mode 100644[m
[1mindex 0000000..59c585d[m
[1m--- /dev/null[m
[1m+++ b/app/Exceptions/Handler.php[m
[36m@@ -0,0 +1,55 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Exceptions;[m
[32m+[m
[32m+[m[32muse Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;[m
[32m+[m[32muse Throwable;[m
[32m+[m
[32m+[m[32mclass Handler extends ExceptionHandler[m
[32m+[m[32m{[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the exception types that are not reported.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontReport = [[m
[32m+[m[32m        //[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * A list of the inputs that are never flashed for validation exceptions.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var array[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $dontFlash = [[m
[32m+[m[32m        'password',[m
[32m+[m[32m        'password_confirmation',[m
[32m+[m[32m    ];[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Report or log an exception.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Throwable  $exception[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     *[m
[32m+[m[32m     * @throws \Exception[m
[32m+[m[32m     */[m
[32m+[m[32m    public function report(Throwable $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        parent::report($exception);[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Render an exception into an HTTP response.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @param  \Illuminate\Http\Request  $request[m
[32m+[m[32m     * @param  \Throwable  $exception[m
[32m+[m[32m     * @return \Symfony\Component\HttpFoundation\Response[m
[32m+[m[32m     *[m
[32m+[m[32m     * @throws \Throwable[m
[32m+[m[32m     */[m
[32m+[m[32m    public function render($request, Throwable $exception)[m
[32m+[m[32m    {[m
[32m+[m[32m        return parent::render($request, $exception);[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ConfirmPasswordController.php b/app/Http/Controllers/Auth/ConfirmPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..138c1f0[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ConfirmPasswordController.php[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse App\Providers\RouteServiceProvider;[m
[32m+[m[32muse Illuminate\Foundation\Auth\ConfirmsPasswords;[m
[32m+[m
[32m+[m[32mclass ConfirmPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Confirm Password Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password confirmations and[m
[32m+[m[32m    | uses a simple trait to include the behavior. You're free to explore[m
[32m+[m[32m    | this trait and override any functions that require customization.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use ConfirmsPasswords;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users when the intended url fails.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = RouteServiceProvider::HOME;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('auth');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/ForgotPasswordController.php b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..465c39c[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/ForgotPasswordController.php[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse Illuminate\Foundation\Auth\SendsPasswordResetEmails;[m
[32m+[m
[32m+[m[32mclass ForgotPasswordController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Password Reset Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller is responsible for handling password reset emails and[m
[32m+[m[32m    | includes a trait which assists in sending these notifications from[m
[32m+[m[32m    | your application to your users. Feel free to explore this trait.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use SendsPasswordResetEmails;[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/LoginController.php b/app/Http/Controllers/Auth/LoginController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..18a0d08[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/LoginController.php[m
[36m@@ -0,0 +1,40 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse App\Providers\RouteServiceProvider;[m
[32m+[m[32muse Illuminate\Foundation\Auth\AuthenticatesUsers;[m
[32m+[m
[32m+[m[32mclass LoginController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Login Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles authenticating users for the application and[m
[32m+[m[32m    | redirecting them to your home screen. The controller uses a trait[m
[32m+[m[32m    | to conveniently provide its functionality to your applications.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use AuthenticatesUsers;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Where to redirect users after login.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @var string[m
[32m+[m[32m     */[m
[32m+[m[32m    protected $redirectTo = RouteServiceProvider::HOME;[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Create a new controller instance.[m
[32m+[m[32m     *[m
[32m+[m[32m     * @return void[m
[32m+[m[32m     */[m
[32m+[m[32m    public function __construct()[m
[32m+[m[32m    {[m
[32m+[m[32m        $this->middleware('guest')->except('logout');[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/app/Http/Controllers/Auth/RegisterController.php b/app/Http/Controllers/Auth/RegisterController.php[m
[1mnew file mode 100644[m
[1mindex 0000000..c6a6de6[m
[1m--- /dev/null[m
[1m+++ b/app/Http/Controllers/Auth/RegisterController.php[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?php[m
[32m+[m
[32m+[m[32mnamespace App\Http\Controllers\Auth;[m
[32m+[m
[32m+[m[32muse App\Http\Controllers\Controller;[m
[32m+[m[32muse App\Providers\RouteServiceProvider;[m
[32m+[m[32muse App\User;[m
[32m+[m[32muse Illuminate\Foundation\Auth\RegistersUsers;[m
[32m+[m[32muse Illuminate\Support\Facades\Hash;[m
[32m+[m[32muse Illuminate\Support\Facades\Validator;[m
[32m+[m
[32m+[m[32mclass RegisterController extends Controller[m
[32m+[m[32m{[m
[32m+[m[32m    /*[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    | Register Controller[m
[32m+[m[32m    |--------------------------------------------------------------------------[m
[32m+[m[32m    |[m
[32m+[m[32m    | This controller handles the registration of new users as well as their[m
[32m+[m[32m    | validation and creation. By default this controller uses a trait to[m
[32m+[m[32m    | provide this functionality without requiring any additional code.[m
[32m+[m[32m    |[m
[32m+[m[32m    */[m
[32m+[m
[32m+[m[32m    use