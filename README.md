<a name="readme-top"></a>

<!-- LOGO -->
<br />

  <h3 align="center">Delorus a Fashion Accessories Wear E-Commerce</h3>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About

![Project Screen Shot][example-screenshot]

<div>
<h3>Delorus,</h3>
<p align="justify">Delorus is a fashion accessories e-commerce platform that allows customers to browse and purchase a wide variety of products online. The platform is built using the PHP programming language and the Laravel web application framework, and follows a monolithic architecture. This means that the entire application, including the front-end and back-end components, are integrated into a single, cohesive codebase.

The platform is designed to be user-friendly and easy to navigate, with a clean and modern interface that makes it easy for customers to find the products they are looking for. The platform also features a powerful search function that allows customers to quickly find products based on various criteria, such as price, category, and brand.</p>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This Project is built with :

* [![MySQL DB][MySQL]][MySQL-url]
* [![Laravel][Laravel]][Laravel-url]
* [![PHP][PHP]][PHP-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Installation

Follow the steps below for installation of this project.

1. Clone the repo
   ```sh
   git clone https://github.com/sodaAPI/delorus.git
   ```
2. Edit and Configure .env 
3. Install Package
   ```sh
   composer install
   ```
4. Migrate Database
   ```sh
   php artisan migrate
   ```
5. Start server
   ```sh
   php artisan serve
   ```
   
### Default User Credential

```sh
Email       : admin@admin.com
Password    : password
Role        : Administrator
```

```sh
Email       : user@user.com
Password    : password
Role        : User
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `License.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[example-screenshot]: /frontend/public/Screenshot.png
[Laravel]: https://img.shields.io/badge/Laravel-20232A?style=for-the-badge&logo=laravel&logoColor=FF2D20
[PHP]: https://img.shields.io/badge/PHP-20232A?style=for-the-badge&logo=php&logoColor=777BB4
[MySQL]: https://img.shields.io/badge/MySQL-20232A?style=for-the-badge&logo=mysql&logoColor=4479A1
[MySQL-url]: https://www.mysql.com/
[PHP-url]: https://www.php.net/
[Laravel-url]: https://laravel.com/
