; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_cmd.c_rsnd_cmd_mod_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_cmd.c_rsnd_cmd_mod_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i64 }
%struct.rsnd_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rsnd_mod* (%struct.rsnd_priv*, i32)* @rsnd_cmd_mod_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rsnd_mod* @rsnd_cmd_mod_get(%struct.rsnd_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %10 = call i32 @rsnd_cmd_nr(%struct.rsnd_priv* %9)
  %11 = icmp sge i32 %8, %10
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ true, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.rsnd_priv*, %struct.rsnd_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rsnd_cmd*
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.rsnd_cmd, %struct.rsnd_cmd* %22, i64 %24
  %26 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_cmd* %25)
  ret %struct.rsnd_mod* %26
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rsnd_cmd_nr(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
