 <%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script
      defer
      src="https://cdn.jsdelivr.net/npm/alpinejs@3.13.1/dist/cdn.min.js"
    ></script>

    <!-- Tailwind -->
    <script src="https://cdn-tailwindcss.vercel.app/"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css"
      rel="stylesheet"
    />
    <link href="./css/tailwind.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
    />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js"
      defer
    ></script>
    <script
      src="https://kit.fontawesome.com/5b0b34b925.js"
      crossorigin="anonymous"
    ></script>
    <!-- loading -->
    <iframe
      id="loading-iframe"
      src="components/loading.html"
      frameborder="0"
      style="
        border: none;
        position: fixed;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        z-index: 999;
        background: transparent; /* Make the iframe background transparent */
        pointer-events: none; /* Allow interaction with elements behind the iframe */
        transition: opacity 1s;
      "
    ></iframe>

    <script>
      window.addEventListener("load", function () {
        // Code xử lý sau khi trang đã nạp hoàn toàn ở đây
        var iframe = document.getElementById("loading-iframe");
        if (iframe) {
          iframe.style.zIndex = 0;
          iframe.classList.add("hidden-iframe");
        }
      });
    </script>
    <style>
      .hidden-iframe {
        opacity: 0;
      }
    </style>
    <!-- modal  -->
    <style>
      .animated {
        -webkit-animation-duration: 1s;
        animation-duration: 1s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
      }

      .animated.faster {
        -webkit-animation-duration: 500ms;
        animation-duration: 500ms;
      }

      .fadeIn {
        -webkit-animation-name: fadeIn;
        animation-name: fadeIn;
      }

      .fadeOut {
        -webkit-animation-name: fadeOut;
        animation-name: fadeOut;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
        }

        to {
          opacity: 1;
        }
      }

      @keyframes fadeOut {
        from {
          opacity: 1;
        }

        to {
          opacity: 0;
        }
      }
    </style>
    <!-- end loading -->
    <title>Create News</title>
  </head>
  <body class="bg-green-500">
    <div class="flex justify-center items-center w-full h-full">
      <!-- MAIN CONTENT -->
      <section class="p-10 pt-4 bg-white rounded-md shadow-md mt-20 w-1/2">
        <!-- back button -->
        <div class="ml-0">
          <a
            href="NewsControl"
            class="group flex items-center bg-transparent text-2xl font-thin tracking-widest text-white back-button"
          >
            <svg
              viewBox="0 0 46 16"
              height="15"
              width="35"
              xmlns="http://www.w3.org/2000/svg"
              id="arrow-horizontal"
              class="fill-slate-700 transition-all duration-300 ease-out group-hover:-translate-x-full group-hover:scale-x-105 group-hover:fill-white"
            >
              <path
                transform="scale(-1, 1) translate(-30)"
                d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
                data-name="Path 10"
                id="Path_10"
              ></path>
            </svg>
            <span
              class="ml-2 text-black after:transition-transform after:duration-500 after:ease-out after:absolute after:bottom-0 after:left-0 after:block after:h-[2px] after:w-full after:origin-bottom-right after:scale-x-0 after:bg-blue-500 after:content-[''] after:group-hover:origin-bottom-left after:group-hover:scale-x-100"
              >Back</span
            >
          </a>
        </div>
        <!-- end back -->
        <header class="border-b border-gray-100 px-10 flex items-center">
          <div class="text-gray-800 mx-auto pb-4">
            <h1 class="font-semibold text-5xl">Create Content</h1>
          </div>
        </header>

        <div class="mx-auto w-full max-w-8xl">
          <form action="createnews" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="animalid" />
            <!-- Submit -->
            <div class="flex justify-end">
              <button
                type="submit"
                class="px-8 py-3 leading-5 ml-auto relative overflow-hidden bg-gray-300 text-white rounded-md shadow-2xl transition-all duration-200 before:absolute before:bottom-0 before:left-0 before:right-0 before:top-0 before:m-auto before:h-0 before:w-0 before:rounded-sm before:bg-green-600 before:duration-300 before:ease-out hover:text-white hover:shadow-bg-green-500 hover:before:h-40 hover:before:w-40 hover:before:opacity-80"
              >
                <p class="relative z-10 font-extralight text-2xl">Save</p>
              </button>
            </div>
            <!-- end submit -->
            <!-- div 1 -->
            <!-- Title -->
            <div class="-mx-3 flex flex-wrap">
              <div class="w-full px-3 sm:w-1/2">
                <label
                  for="movie-url"
                  class="mb-3 block text-2xl font-medium text-[#07074D]"
                >
                  Title
                </label>
                <input
                  name="title"
                  type="text"
                  placeholder="enter tittle"
                  min="0"
                  class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                />
              </div>
              <!-- end title -->
              <!-- date -->
              <div class="w-full px-3 sm:w-1/2">
                <div class="mb-5">
                  <label
                    for="release"
                    class="mb-3 block text-2xl font-medium text-[#07074D]"
                  >
                    Release Date
                  </label>
                  <input
                    name="day"
                    type="date"
                    required
                    max="<%= java.time.LocalDate.now() %>"
                    class="w-full rounded-md border border-[#e0e0e0] bg-white py-3 px-6 text-2xl font-medium text-[#6B7280] outline-none focus:border-[#6A64F1] focus:shadow-md"
                  />
                </div>
              </div>
              <!-- end date -->
            </div>
            <!-- end div 1 -->
            <!-- Content -->
            <div class="w-full">
              <div class="mb-5">
                <label
                  for="content"
                  class="mb-3 block text-2xl font-medium text-[#07074D]"
                >
                  Cage_ID
                </label>
                <textarea
                  name="description"
                  spellcheck="false"
                  placeholder="Describe everything about this post here"
                  class="description bg-gray-100 sec p-3 h-60 border border-gray-300 outline-none mt-2 w-full rounded-lg border bg-white px-4 h-36 py-2.5"
                ></textarea>
              </div>
            </div>
            <!-- end content -->

            <!-- photo -->
            <div class="w-full bg-white">
              <div
                class="container mx-auto h-full flex flex-col justify-center items-center"
              >
                <div id="images-container"></div>
                <div class="flex w-full justify-center">
                  <div
                    id="multi-upload-button"
                    class="cursor-pointer bg-neutral-200 rounded-md px-12 py-4 text-2xl border-none text-neutral-600 hover:text-white hover:shadow-[inset_16rem_0_0_0] hover:shadow-blue-500 duration-[400ms,700ms] transition-[color,box-shadow]"
                  >
                    Upload Photo
                  </div>
                  <div
                    class="border-gray-300 rounded-r-md flex items-center justify-between"
                  >
                    <span id="multi-upload-text" class="p-2 text-xl"></span>
                    <button
                      id="multi-upload-delete"
                      class="hidden"
                      onclick="removeMultiUpload()"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="fill-current text-red-700 w-3 h-3"
                        viewBox="0 0 320 512"
                      >
                        <path
                          d="M310.6 361.4c12.5 12.5 12.5 32.75 0 45.25C304.4 412.9 296.2 416 288 416s-16.38-3.125-22.62-9.375L160 301.3L54.63 406.6C48.38 412.9 40.19 416 32 416S15.63 412.9 9.375 406.6c-12.5-12.5-12.5-32.75 0-45.25l105.4-105.4L9.375 150.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0L160 210.8l105.4-105.4c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25l-105.4 105.4L310.6 361.4z"
                        />
                      </svg>
                    </button>
                  </div>
                </div>
                <input
                  type="file"
                  id="multi-upload-input"
                  class="hidden"
                  name="photo"
                  multiple
                />
              </div>
            </div>
            <script src="js/createphoto.js"></script>
            <!-- end photo -->
          </form>
        </div>
      </section>
    </div>
  </body>
</html>
