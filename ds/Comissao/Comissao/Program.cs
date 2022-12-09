using System;

namespace Comissao
{
    class Program
    {
        static void Main(string[] args)
        {
            double salario, mussarela, mortadela, presunto, peitoperu;

            Console.WriteLine("Digite o valor so salário:");
            salario = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Digite a quantidade (kg) vendida de mussarela:");
            mussarela = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Digite a quantidade (kg) vendida de mortadela:");
            mortadela = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Digite a quantidade (kg) vendida de presunto:");
            presunto = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Digite a quantidade (kg) vendida de peito de peru:");
            peitoperu = Convert.ToDouble(Console.ReadLine());

            Console.Clear();

            double comissao_mussarela = 22.60 * mussarela;
            double comissao_mortadela = mortadela * 8.98;
            double comissao_presunto = presunto * 31.03;
            double comissao_peitoperu = peitoperu * 58.90;

            double comissaomu = (comissao_mussarela * 5) / 100;
            double comissaomo = (comissao_mortadela * 6.5) / 100;
            double comissaop = (comissao_presunto * 4.5) / 100;
            double comissaoperu = (comissao_peitoperu * 2.5) / 100;

            double salariototal = salario + comissaomu + comissaomo + comissaop + comissaoperu;
            double comissaototal = comissaomu + comissaomo + comissaop + comissaoperu;

            Console.BackgroundColor = ConsoleColor.Red;
            Console.ForegroundColor = ConsoleColor.Yellow;
            
            Console.WriteLine(
            "VALORES CALCULADOS DA SUA COMISSÃO:"
            );
            Console.ResetColor();

            Console.WriteLine(
           ""
           );
            Console.WriteLine(
            ($"Você vendeu {mussarela} Kg de mussarela no valor de R$ {comissao_mussarela} sua comissão é R$ {comissaomu}")
            );
            Console.WriteLine(
            ($"Você vendeu {mortadela} Kg de mortadela no valor de R$ {comissao_mortadela} sua comissao é R$ {comissaomo}")
            );
            Console.WriteLine(
            ($"Você vendeu {presunto} Kg de presunto no valor de R$ {comissao_presunto} sua comissao é R$ {comissaop}")
            );
            Console.WriteLine(
            ($"Você vendeu {peitoperu} Kg de peito de peru no valor de R$ {comissao_peitoperu} sua comissao é R$ {comissaoperu}")
            );
            Console.WriteLine(
           ""
           );
            Console.WriteLine(
            ($"Sua comissão total é R$ {comissaototal}")
            );

            Console.BackgroundColor = ConsoleColor.Green;
            Console.ForegroundColor = ConsoleColor.Yellow;

            Console.WriteLine(
            ($"Salario total de R$ {salariototal}")
            );
             Console.ResetColor();

        }
    }
}
