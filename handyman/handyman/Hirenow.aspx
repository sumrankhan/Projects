<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hirenow.aspx.cs" Inherits="handyman.Hirenow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar d-flex justify-content-between align-items-center">
        <h1>Hire Now</h1>
        <div class="notification-icon"><img src="assets/img/bell.png" /></div>
    </div>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .hire-now-container {
            width: 100%;
            background-color: transparent;
            padding: 20px;
            margin-top:-9px;
        }

        .header {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .hire-form {
            display: flex;
            flex-direction: column;
        }

        .label {
            font-size: 16px;
            color: #555;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea,
        input[type="date"],
        input[type="time"],
        input[type="file"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #afafaf;
            border-radius: 5px;
            font-size: 16px;
        }

        textarea {
            resize: none;
        }

        .hire-now-button {
            width: 100%;
            padding: 12px;
            background-color: #0b8b60;
            color: #fff;
            border: none;
            border-radius: 25px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .hire-now-button:hover {
            background-color: #2e9e79;
            transform: scale(1.05);
        }
    </style>

    <div class="hire-now-container">
        <form class="hire-form">
            <label for="name" class="label">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>

            <label for="handymanList" class="label">Category</label>
            <select id="handymanList" name="handymanList" required>
                <option value="" disabled selected>Select a category</option>
                <option value="plumber">Plumber</option>
                <option value="electrician">Electrician</option>
                <option value="carpenter">Carpenter</option>
                <option value="cleaner">Cleaner</option>
                <option value="painter">Painter</option>
                <!-- Add more categories as needed -->
            </select>

            <label for="description" class="label">Description</label>
            <textarea id="description" name="description" placeholder="Describe the Responsibilities" rows="5" required></textarea>

            <label for="date" class="label">Date</label>
            <input type="date" id="date" name="date" required>

            <label for="time" class="label">Time</label>
            <input type="time" id="time" name="time" required>

            <label for="imageUpload" class="label">Upload Image</label>
            <input type="file" id="imageUpload" name="imageUpload" accept="image/*">

            <button type="submit" class="hire-now-button">Hire Now</button>
        </form>
    </div>

    <script>
        // Set current date and time as default
        window.onload = function () {
            const now = new Date();
            const dateInput = document.getElementById('date');
            const timeInput = document.getElementById('time');

            dateInput.value = now.toISOString().split('T')[0];
            timeInput.value = now.toTimeString().split(':').slice(0, 2).join(':');
        };
    </script>

</asp:Content>
