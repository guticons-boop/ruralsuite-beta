<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Web Builder | RuralGesto</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,wght@1,900&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background: #f4f7f6; }
        .italic-black { font-style: italic; font-weight: 900; letter-spacing: -1px; }
        .step-card { background: white; border-radius: 35px; padding: 30px; margin-bottom: 20px; border: 1px solid #eee; }
        .template-card { border: 3px solid transparent; transition: 0.3s; cursor: pointer; border-radius: 20px; overflow: hidden; }
        .template-card.active { border-color: #7c3aed; transform: scale(1.02); }
        .input-domain { width: 100%; padding: 18px; border-radius: 20px; border: 2px solid #eee; font-weight: 800; font-size: 16px; outline: none; transition: 0.3s; }
        .input-domain:focus { border-color: #7c3aed; }
    </style>
</head>
<body class="p-6 max-w-2xl mx-auto pb-32">

    <header class="mb-10 flex justify-between items-center">
        <button onclick="location.href='/hub/'" class="text-[10px] font-black text-gray-400 italic uppercase border border-gray-200 px-4 py-2 rounded-full">← Volver al Hub</button>
        <h1 class="italic-black text-2xl uppercase text-purple-600">Site Builder</h1>
    </header>

    <div class="step-card shadow-sm">
        <div class="flex items-center gap-3 mb-6">
            <span class="bg-purple-600 text-white w-8 h-8 rounded-full flex items-center justify-center font-black italic">1</span>
            <h2 class="italic-black text-lg uppercase italic">Elige tu dominio</h2>
        </div>
        <div class="relative">
            <input type="text" id="domain-name" placeholder="nombre-de-tu-casa" class="input-domain">
            <span class="absolute right-5 top-5 font-black text-gray-300 italic">.com</span>
        </div>
        <p class="text-[10px] font-bold text-gray-400 mt-4 uppercase italic">Sugerencia: Usa el nombre de tu localidad para mejor SEO.</p>
    </div>

    <div class="step-card shadow-sm">
        <div class="flex items-center gap-3 mb-6">
            <span class="bg-purple-600 text-white w-8 h-8 rounded-full flex items-center justify-center font-black italic">2</span>
            <h2 class="italic-black text-lg uppercase italic">Selecciona un Estilo</h2>
        </div>
        <div class="grid grid-cols-2 gap-4">
            <div onclick="selectTpl(this)" class="template-card active">
                <img src="https://images.unsplash.com/photo-1585543805890-6051f7829f98?auto=format&fit=crop&q=80&w=400" class="h-32 w-full object-cover">
                <div class="p-3 bg-gray-50 text-[10px] font-black uppercase text-center italic">Rústico Moderno</div>
            </div>
            <div onclick="selectTpl(this)" class="template-card">
                <img src="https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?auto=format&fit=crop&q=80&w=400" class="h-32 w-full object-cover">
                <div class="p-3 bg-gray-50 text-[10px] font-black uppercase text-center italic">Minimalista Lux</div>
            </div>
        </div>
    </div>

    <div class="step-card shadow-sm">
        <div class="flex items-center gap-3 mb-6">
            <span class="bg-purple-600 text-white w-8 h-8 rounded-full flex items-center justify-center font-black italic">3</span>
            <h2 class="italic-black text-lg uppercase italic">Datos de la Web</h2>
        </div>
        <div class="space-y-4">
            <input type="text" placeholder="Título de la web (Ej: Casa Rural Los Olivos)" class="w-full p-4 rounded-xl bg-gray-50 border border-gray-100 font-bold">
            <textarea placeholder="Descripción corta para atraer clientes..." class="w-full p-4 rounded-xl bg-gray-50 border border-gray-100 font-bold h-32"></textarea>
            
            <div class="flex items-center gap-3 p-4 bg-green-50 rounded-2xl border border-green-100">
                <input type="checkbox" checked disabled class="w-5 h-5">
                <span class="text-[10px] font-black uppercase text-green-700 italic">Sincronizar automáticamente con mi calendario de RuralGesto</span>
            </div>
        </div>
    </div>

    <button onclick="publish()" class="w-full bg-gradient-to-r from-purple-600 to-indigo-700 text-white p-6 rounded-[30px] font-black italic uppercase text-xl shadow-2xl shadow-purple-200">
        Publicar Web y Contratar Dominio
    </button>

    <script>
        function selectTpl(el) {
            document.querySelectorAll('.template-card').forEach(c => c.classList.remove('active'));
            el.classList.add('active');
        }

        function publish() {
            const domain = document.getElementById('domain-name').value;
            if(!domain) return alert("Por favor, introduce un nombre para tu dominio.");
            
            alert(`¡Procesando! Estamos registrando ${domain}.com y vinculando tu calendario de RuralGesto...`);
            setTimeout(() => {
                alert("Petición enviada. En 24/48h tu web estará online.");
                location.href = '/hub/';
            }, 2000);
        }
    </script>
</body>
</html>
