; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_rdai_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_rdai_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai = type { i32 }
%struct.rsnd_priv = type { %struct.rsnd_dai* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsnd_dai* @rsnd_rdai_get(%struct.rsnd_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_dai*, align 8
  %4 = alloca %struct.rsnd_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %11 = call i32 @rsnd_rdai_nr(%struct.rsnd_priv* %10)
  %12 = icmp sge i32 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store %struct.rsnd_dai* null, %struct.rsnd_dai** %3, align 8
  br label %21

14:                                               ; preds = %8
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %16 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %15, i32 0, i32 0
  %17 = load %struct.rsnd_dai*, %struct.rsnd_dai** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %17, i64 %19
  store %struct.rsnd_dai* %20, %struct.rsnd_dai** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.rsnd_dai*, %struct.rsnd_dai** %3, align 8
  ret %struct.rsnd_dai* %22
}

declare dso_local i32 @rsnd_rdai_nr(%struct.rsnd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
