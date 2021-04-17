<template>
    <div class="container">
        <div class="card">
            <!--<div class="card-header">Datos: {{ num }}</div>-->
            <div class="card-header">Skills</div>

            <div class="card-body">
                <!--<button v-on:click.prevent="sumNum()">Sumar num</button>-->
                <!--<button @click.prevent="sumNum()">Sumar num</button>-->
                <!--<input type="text" name="skills[]" v-model="inputValue">-->
                <!--<div v-for="(input, i) in inputs" v-bind:key="i">-->
                <div v-for="(input, i) in inputs" :key="i" class="d-flex mb-2 p-0">
                    <div class="col-10">
                        <input class="form-control mb-2" type="text" name="skills[]" v-model="inputs[i]" placeholder="JavaScript, PHP, etc.">
                    </div>
                    <div class="col-2">
                        <button class="btn btn-danger" @click.prevent="remove(i)">
                            Delete
                        </button>
                    </div>
                </div>
                <div>
                    <button class="btn btn-primary ml-3" @click.prevent="add()">
                        Add
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {

        props: {
            skills: {
                type: Array,
                default: () => ([]),
            }
        },

        mounted() {
            console.log('Component mounted.')
        },

        data() {
            return {
                inputs: this.skills,
            }
        },

        methods: {
            add() {
                this.inputs.push('');
            },
            remove(i) {
                this.inputs.splice(i, 1);
            }
        }

    }
</script>
