<!-- bagian footer -->
	<footer>
		<div class="container text-center">
    Copyright &copy; <?= date('Y') ?> - <?= $d->nama ?>.
		</div>

	</footer>

	<script type="text/javascript">
		
		var mobileMenu = document.getElementById("mobileMenu")

		function showMobileMenu(){
			mobileMenu.style.display = "block"
		}

		function hideMobileMenu(){
			mobileMenu.style.display = "none"
		}

	</script>

</body>
</html>