// Register ScrollTrigger plugin
gsap.registerPlugin(ScrollTrigger);

// --- Navigation Menu & Logo Animation ---
var t1 = gsap.timeline();
const navDialog = document.getElementById("nav-dialog");

function hangleMenu() {
  navDialog.classList.toggle('hidden');
  const menuTimeline = gsap.timeline();
  menuTimeline.from("#mdNav", {
      x: 150,
      duration: 0.6,
      delay: 0.1,
      stagger: 0.2,
      opacity: 0,
  });
}

function option(){
  navDialog.classList.toggle('hidden');
}

function hangletoggle(){
  navDialog.classList.toggle('hidden');
}

// Animate nav-menu and logo on page load
t1.from("#nav-menu, #logo", {
  y: -30,
  duration: 0.6,
  delay: 0.4,
  opacity: 0,
  stagger: 0.7,
});

// --- Page Loader ---
window.onload = function () {
  const spinner = document.getElementById('spinner');
  const content = document.getElementById('content');

  if (spinner) spinner.style.display = 'none';
  if (content) content.style.display = 'block';
  if (content) content.style.opacity = '1';
};

// --- Custom Cursor ---
const cursor = document.querySelector("#cursor");
document.body.addEventListener("mousemove", function (e) {
  gsap.to(cursor, {
    x: e.clientX,
    y: e.clientY,
    duration: 0.3,
    ease: "power2.out",
  });
});

// --- Home Section Animation ---
const introTl = gsap.timeline({
  scrollTrigger: {
    trigger: "#home",
    start: "top 80%",
    toggleActions: "play none none none"
  }
});

// Image slides from left
introTl.from("#profile", {
  x: -100,
  opacity: 0,
  duration: 0.8,
  ease: "power3.out"
});

// Text content slides from right
introTl.from("#home-content", {
  x: 100,
  opacity: 0,
  duration: 0.8,
  ease: "power3.out"
}, "<");

// Fade in subtitle, summary, button
introTl.from(".inn", { opacity: 0, y: 20, duration: 0.5 }, "-=0.3")
       .from("#summary-text", { opacity: 0, y: 20, duration: 0.5 }, "-=0.3")
       .from("#button", { opacity: 0, y: 20, duration: 0.5 }, "-=0.3");

// --- Typewriter Animation for "I'm Palak Dixit" ---
function breakTest() {
  const portElement = document.getElementById("port");
  const portText = portElement.textContent.trim();
  let clutter = "";
  portText.split("").forEach(function (char) {
    clutter += `<span>${char === " " ? "&nbsp;" : char}</span>`;
  });
  portElement.innerHTML = clutter;
}
breakTest();

const textTimeline = gsap.timeline({ repeat: -1, repeatDelay: 1.5 });
textTimeline.from("#port span", {
  y: 50,
  opacity: 0,
  duration: 0.5,
  ease: "power2.out",
  stagger: 0.1
});
textTimeline.to("#port span", {
  opacity: 0,
  y: -50,
  duration: 0.3,
  ease: "power2.in",
  stagger: 0.05,
  delay: 2
});

// --- Education Section Animation ---
gsap.from("#education > h1", {
  scrollTrigger: {
    trigger: "#education",
    start: "top 80%",
    toggleActions: "play none none none"
  },
  opacity: 0,
  y: 50,
  duration: 1,
  ease: "power3.out"
});

const eduCards = document.querySelectorAll("#education .grid .col-span-4 > div");
eduCards.forEach((card, index) => {
  const isLeft = index % 2 === 0;
  gsap.from(card, {
    scrollTrigger: {
      trigger: card,
      start: "top 90%",
      toggleActions: "play none none none"
    },
    opacity: 0,
    x: isLeft ? -100 : 100,
    duration: 0.8,
    ease: "power3.out",
    delay: index * 0.2
  });
});

const timelineMarkers = document.querySelectorAll("#education .grid .relative > .absolute");
timelineMarkers.forEach((marker, index) => {
  gsap.from(marker, {
    scrollTrigger: {
      trigger: marker,
      start: "top 90%",
      toggleActions: "play none none none"
    },
    opacity: 0,
    scale: 0.2,
    duration: 0.5,
    ease: "back.out(1.7)",
    delay: index * 0.2
  });
});

// --- Skills Section Animation ---
gsap.from("#skil", {
  scrollTrigger: {
    trigger: "#skil",
    start: "top 80%",
    toggleActions: "play none none none"
  },
  y: 5,
  duration: 0.8,
  opacity: 0.96,
  ease: "power2.inOut"
});

// Floating effect for skill icons
gsap.to(".edu-icon, .skill-icon", {
  scrollTrigger: {
    trigger: ".edu-icon, .skill-icon",
    start: "top 90%",
  },
  y: 5,
  repeat: -1,
  yoyo: true,
  duration: 2,
  ease: "sine.inOut"
});

// --- Contact Section Animation ---
gsap.from("#contact-details, #contact-form", {
  scrollTrigger: {
    trigger: "#contact",
    start: "top 80%",
    toggleActions: "play none none none"
  },
  opacity: 0,
  y: 50,
  duration: 1,
  stagger: 0.3,
  ease: "power3.out"
});

gsap.from(".form-input", {
  scrollTrigger: {
    trigger: "#contact-form",
    start: "top 90%"
  },
  opacity: 0,
  scale: 0.8,
  stagger: 0.2,
  duration: 0.8,
  ease: "power4.out"
});
