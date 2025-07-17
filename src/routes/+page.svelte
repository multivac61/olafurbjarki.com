<script lang="ts">
	import cute from '$lib/cute.jpeg';
	import katla from '$lib/katla.jpeg';
	import japan from '$lib/japan.jpeg';
	import harpa from '$lib/harpa.jpeg';
	import pirate from '$lib/pirate.jpeg';
	import { fade } from 'svelte/transition';

	const images = [cute, katla, japan, harpa, pirate];
	let selectedImage: string | null = null;
	let currentImageIndex = 0;

	function openModal(imageSrc: string) {
		selectedImage = imageSrc;
		currentImageIndex = images.indexOf(imageSrc);
	}

	function closeModal() {
		selectedImage = null;
	}

	function nextImage() {
		currentImageIndex = (currentImageIndex + 1) % images.length;
		selectedImage = images[currentImageIndex];
	}

	function prevImage() {
		currentImageIndex = (currentImageIndex - 1 + images.length) % images.length;
		selectedImage = images[currentImageIndex];
	}

	function handleKeydown(event: KeyboardEvent) {
		if (!selectedImage) return;
		
		if (event.key === 'Escape') {
			closeModal();
		} else if (event.key === 'ArrowRight') {
			nextImage();
		} else if (event.key === 'ArrowLeft') {
			prevImage();
		}
	}
</script>

<svelte:window on:keydown={handleKeydown} />

<div class="bg-white">
	<main class="isolate">
		<!-- Hero section -->
		<div class="relative isolate -z-10">
			<svg
				aria-hidden="true"
				class="absolute inset-x-0 top-0 -z-10 h-256 w-full mask-[radial-gradient(32rem_32rem_at_center,white,transparent)] stroke-gray-200"
			>
				<defs>
					<pattern
						id="1f932ae7-37de-4c0a-a8b0-a6e3b4d44b84"
						width="200"
						height="200"
						x="50%"
						y="-1"
						patternUnits="userSpaceOnUse"
					>
						<path d="M.5 200V.5H200" fill="none" />
					</pattern>
				</defs>
			</svg>
			<div
				aria-hidden="true"
				class="absolute top-0 right-0 left-1/2 -z-10 -ml-24 transform-gpu overflow-hidden blur-3xl lg:ml-24 xl:ml-48"
			>
				<div
					style="clip-path: polygon(63.1% 29.5%, 100% 17.1%, 76.6% 3%, 48.4% 0%, 44.6% 4.7%, 54.5% 25.3%, 59.8% 49%, 55.2% 57.8%, 44.4% 57.2%, 27.8% 47.9%, 35.1% 81.5%, 0% 97.7%, 39.2% 100%, 35.2% 81.4%, 97.2% 52.8%, 63.1% 29.5%)"
					class="aspect-801/1036 w-200.25 bg-linear-to-tr from-[#000000] to-[#9089fc] opacity-30"
				></div>
			</div>
			<div class="overflow-hidden">
				<div class="mx-auto max-w-7xl px-6 pt-36 pb-32 sm:pt-60 lg:px-8 lg:pt-32">
					<div class="mx-auto max-w-2xl gap-x-14 lg:mx-0 lg:flex lg:max-w-none lg:items-center">
						<div class="relative w-full lg:max-w-xl lg:shrink-0 xl:max-w-2xl">
							<h1
								class="text-5xl font-semibold tracking-tight text-pretty text-gray-900 sm:text-7xl"
							>
								Ólafur Bjarki
							</h1>
							<p
								class="mt-8 text-lg font-medium text-pretty text-gray-500 sm:max-w-md sm:text-xl/8 lg:max-w-none [&>a]:font-bold [&>a]:whitespace-nowrap [&>a]:hover:underline"
							>
								These days I'm focused on my company <a
									href="https://genki.is"
									target="_blank"
									rel="noopener noreferrer">Genki</a
								>. Top of mind for me is building
								<a
									href="https://www.youtube.com/watch?v=2c85TVuPOm4"
									target="_blank"
									rel="noopener noreferrer">Katla 🌋</a
								>
								music synthesizer inspired by Icelandic volcanos. In the past I've
								<a
									href="https://open.spotify.com/artist/4WGn9awkSk0kpJyAuTjuwq"
									target="_blank"
									rel="noopener noreferrer">released and performed my own music</a
								>,
								<a
									href="https://pure.qub.ac.uk/en/prizes/dafx-best-paper-award"
									target="_blank"
									rel="noopener noreferrer">published papers</a
								>,
								<a
									href="https://music.youtube.com/channel/UCRZreIpmPcDACs6TKnRXOmg"
									target="_blank"
									rel="noopener noreferrer">sung in choirs</a
								>,
								<a href="https://www.improvisland.is/" target="_blank" rel="noopener noreferrer"
									>performed improv comedy</a
								>, created the
								<a
									href="https://www.youtube.com/watch?v=8MNToJ-3vSw"
									target="_blank"
									rel="noopener noreferrer">Wave ring for musicians</a
								>, explored the
								<a
									href="https://x.com/olafurbogason/status/1638518966980157440"
									target="_blank"
									rel="noopener noreferrer">future of HCI</a
								>, programmed a
								<a href="https://hvaderibio.is" target="_blank" rel="noopener noreferrer"
									>bunch of websites</a
								>
								and worked on
								<a
									href="https://github.com/multivac61/fod-oracle"
									target="_blank"
									rel="noopener noreferrer">tooling for the Nix ecosystem</a
								>. I've also been lucky to live and travel all over, for example Japan, China, USA,
								Canada, Germany, Eswatini, South Africa...
								<br />
							</p>
							<p
								class="mt-8 text-lg font-medium text-pretty text-gray-500 sm:max-w-md sm:text-xl/8 lg:max-w-none [&>a]:font-bold [&>a]:whitespace-nowrap [&>a]:hover:underline"
							>
								Writing this makes me realise that I have had it pretty great so far.
							</p>
						</div>
						<div
							class="mt-14 flex justify-end gap-10 sm:-mt-44 sm:justify-start sm:pl-20 lg:mt-0 lg:pl-0"
						>
							<div
								class="ml-auto w-44 flex-none space-y-8 pt-32 sm:ml-0 sm:w-64 sm:pt-80 lg:order-last lg:pt-36 xl:order-0 xl:pt-80"
							>
								<div class="relative">
									<button
										type="button"
										class="aspect-2/3 w-full cursor-pointer rounded-xl border-0 bg-transparent p-0 shadow-lg"
										on:click={() => openModal(cute)}
									>
										<img
											src={cute}
											alt="From a recent photoshoot"
											class="aspect-2/3 w-full rounded-xl object-cover"
										/>
									</button>
									<div class="pointer-events-none absolute inset-0 rounded-xl"></div>
								</div>
							</div>
							<div class="mr-auto w-44 flex-none space-y-8 sm:mr-0 sm:w-64 sm:pt-52 lg:pt-36">
								<div class="relative">
									<button
										type="button"
										class="aspect-2/3 w-full cursor-pointer rounded-xl border-0 bg-transparent p-0 shadow-lg"
										on:click={() => openModal(katla)}
									>
										<img
											src={katla}
											alt="The Katla synthesizer"
											class="aspect-2/3 w-full rounded-xl object-cover"
										/>
									</button>
									<div class="pointer-events-none absolute inset-0 rounded-xl"></div>
								</div>
								<div class="relative">
									<button
										type="button"
										class="aspect-2/3 w-full cursor-pointer rounded-xl border-0 bg-transparent p-0 shadow-lg"
										on:click={() => openModal(japan)}
									>
										<img
											src={japan}
											alt="With my girlfriend during our trip to Japan"
											class="aspect-2/3 w-full rounded-xl object-cover"
										/>
									</button>
									<div class="pointer-events-none absolute inset-0 rounded-xl"></div>
								</div>
							</div>
							<div class="w-44 flex-none space-y-8 pt-32 sm:w-64 sm:pt-0">
								<div class="relative">
									<button
										type="button"
										class="aspect-2/3 w-full cursor-pointer rounded-xl border-0 bg-transparent p-0 shadow-lg"
										on:click={() => openModal(harpa)}
									>
										<img
											src={harpa}
											alt=""
											class="aspect-2/3 w-full rounded-xl object-cover object-left"
										/>
									</button>
									<div class="pointer-events-none absolute inset-0 rounded-xl"></div>
								</div>
								<div class="relative">
									<button
										type="button"
										class="aspect-2/3 w-full cursor-pointer rounded-xl border-0 bg-transparent p-0 shadow-lg"
										on:click={() => openModal(pirate)}
									>
										<img src={pirate} alt="" class="aspect-2/3 w-full rounded-xl object-cover" />
									</button>
									<div class="pointer-events-none absolute inset-0 rounded-xl"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>

{#if selectedImage}
	<div
		class="bg-opacity-75 fixed inset-0 z-50 flex items-center justify-center bg-black p-4"
		on:click={closeModal}
		on:keydown={(e) => e.key === 'Enter' && closeModal()}
		role="dialog"
		aria-modal="true"
		tabindex="-1"
		transition:fade={{ duration: 200 }}
	>
		<div class="relative max-h-full max-w-full" transition:fade={{ duration: 300, delay: 100 }}>
			<div
				class="max-h-screen max-w-full rounded-lg"
				on:click|stopPropagation
				on:keydown|stopPropagation
				role="button"
				tabindex="0"
			>
				<img
					src={selectedImage}
					alt=""
					class="max-h-screen max-w-full rounded-lg object-contain"
				/>
			</div>
			<button
				class="bg-opacity-50 absolute top-4 right-4 flex h-8 w-8 items-center justify-center rounded-full bg-black text-xl text-white transition-colors duration-200 hover:text-gray-300"
				on:click={closeModal}
			>
				×
			</button>
		</div>
	</div>
{/if}
