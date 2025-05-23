<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Customer_Feedback.aspx.cs" Inherits="Admin_Panel.Customers.Customer_Feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="order-history-container">
        <h3>Customers Feedback</h3>
         <div class="customer-table-div">
       <table id="dataTable">
  <thead>
    <tr class="non-hover">
      <th>Order no</th>
      <th>Name</th>
      <th>Amount</th>
      <th>Review</th>
      <th>Status</th>
      <th>No. of Feedbacks</th>
      <th>Detail</th>
    </tr>
  </thead>
  <tbody>
   

      <tr>
  <td>12571</td>
  <td>Maria</td>
  <td>$8</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12571" name="rating-12571" value="5" />
      <label for="star5-12571">&#9733;</label>
      <input type="radio" id="star4-12571" name="rating-12571" value="4" />
      <label for="star4-12571">&#9733;</label>
      <input type="radio" id="star3-12571" name="rating-12571" value="3" />
      <label for="star3-12571">&#9733;</label>
      <input type="radio" id="star2-12571" name="rating-12571" value="2" />
      <label for="star2-12571">&#9733;</label>
      <input type="radio" id="star1-12571" name="rating-12571" value="1" />
      <label for="star1-12571">&#9733;</label>
    </div>
  </td>
  <td>Processing</td>
  <td>3</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12571')">View</a>
  </td>
</tr>
<tr>
  <td>12572</td>
  <td>John Doe</td>
  <td>$23</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12572" name="rating-12572" value="5" />
      <label for="star5-12572">&#9733;</label>
      <input type="radio" id="star4-12572" name="rating-12572" value="4" />
      <label for="star4-12572">&#9733;</label>
      <input type="radio" id="star3-12572" name="rating-12572" value="3" />
      <label for="star3-12572">&#9733;</label>
      <input type="radio" id="star2-12572" name="rating-12572" value="2" />
      <label for="star2-12572">&#9733;</label>
      <input type="radio" id="star1-12572" name="rating-12572" value="1" />
      <label for="star1-12572">&#9733;</label>
    </div>
  </td>
  <td>Received</td>
  <td>10</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12572')">View</a>
  </td>
</tr>
<tr>
  <td>12573</td>
  <td>Jane Smith</td>
  <td>$13</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12573" name="rating-12573" value="5" />
      <label for="star5-12573">&#9733;</label>
      <input type="radio" id="star4-12573" name="rating-12573" value="4" />
      <label for="star4-12573">&#9733;</label>
      <input type="radio" id="star3-12573" name="rating-12573" value="3" />
      <label for="star3-12573">&#9733;</label>
      <input type="radio" id="star2-12573" name="rating-12573" value="2" />
      <label for="star2-12573">&#9733;</label>
      <input type="radio" id="star1-12573" name="rating-12573" value="1" />
      <label for="star1-12573">&#9733;</label>
    </div>
  </td>
  <td>Shipped</td>
  <td>7</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12573')">View</a>
  </td>
</tr>
<tr>
  <td>12574</td>
  <td>Emma Brown</td>
  <td>$34</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12574" name="rating-12574" value="5" />
      <label for="star5-12574">&#9733;</label>
      <input type="radio" id="star4-12574" name="rating-12574" value="4" />
      <label for="star4-12574">&#9733;</label>
      <input type="radio" id="star3-12574" name="rating-12574" value="3" />
      <label for="star3-12574">&#9733;</label>
      <input type="radio" id="star2-12574" name="rating-12574" value="2" />
      <label for="star2-12574">&#9733;</label>
      <input type="radio" id="star1-12574" name="rating-12574" value="1" />
      <label for="star1-12574">&#9733;</label>
    </div>
  </td>
  <td>Delivered</td>
  <td>12</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12574')">View</a>
  </td>
</tr>
<tr>
  <td>12575</td>
  <td>Chris Green</td>
  <td>$100</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12575" name="rating-12575" value="5" />
      <label for="star5-12575">&#9733;</label>
      <input type="radio" id="star4-12575" name="rating-12575" value="4" />
      <label for="star4-12575">&#9733;</label>
      <input type="radio" id="star3-12575" name="rating-12575" value="3" />
      <label for="star3-12575">&#9733;</label>
      <input type="radio" id="star2-12575" name="rating-12575" value="2" />
      <label for="star2-12575">&#9733;</label>
      <input type="radio" id="star1-12575" name="rating-12575" value="1" />
      <label for="star1-12575">&#9733;</label>
    </div>
  </td>
  <td>Processing</td>
  <td>15</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12575')">View</a>
  </td>
</tr>
<tr>
  <td>12576</td>
  <td>Sophia White</td>
  <td>$52</td>
  <td>
    <div class="star-rating">
      <input type="radio" id="star5-12576" name="rating-12576" value="5" />
      <label for="star5-12576">&#9733;</label>
      <input type="radio" id="star4-12576" name="rating-12576" value="4" />
      <label for="star4-12576">&#9733;</label>
      <input type="radio" id="star3-12576" name="rating-12576" value="3" />
      <label for="star3-12576">&#9733;</label>
      <input type="radio" id="star2-12576" name="rating-12576" value="2" />
      <label for="star2-12576">&#9733;</label>
      <input type="radio" id="star1-12576" name="rating-12576" value="1" />
      <label for="star1-12576">&#9733;</label>
    </div>
  </td>
  <td>Received</td>
  <td>8</td>
  <td>
    <a href="#" onclick="openFeedbackPopup('12576')">View</a>
  </td>
</tr>

    <!-- Add more rows as needed -->
  </tbody>
</table>

<!-- Feedback Popup -->
<div id="feedbackPopup" class="feedback-popup" style="display: none;">
  <div class="feedback-popup-content">
    <span class="feedback-popup-close" onclick="closeFeedbackPopup()">&times;</span>
    <h2>Customer Feedback</h2>
      <br />
      <h3>Customer Review</h3>

    <p id="feedbackRemarks"></p>
      <br />
      <h3>Reply</h3>

    <textarea id="replyField" placeholder="Enter your reply here..."></textarea>
    <button class="btn btn-primary" onclick="submitFeedbackReply()">Done</button>
  </div>
</div>
             </div>
      </div>
    <script>
  function openFeedbackPopup(orderId) {
    // Fetch customer remarks dynamically if needed
      document.getElementById('feedbackRemarks').innerText = `Defected Product`;
    document.getElementById('feedbackPopup').style.display = 'flex';
  }

  function closeFeedbackPopup() {
    document.getElementById('feedbackPopup').style.display = 'none';
  }

  function submitFeedbackReply() {
    const reply = document.getElementById('replyField').value;
    if (reply) {
      alert('Reply submitted: ' + reply);
      closeFeedbackPopup();
    } else {
      alert('Please enter a reply before submitting.');
    }
  }
</script>

</asp:Content>
