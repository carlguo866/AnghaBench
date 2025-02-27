; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_ssiu = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32)* @rsnd_ssiu_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rsnd_ssiu_get_status(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, i32 %2) #0 {
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsnd_ssiu*, align 8
  %8 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %10 = call %struct.rsnd_ssiu* @rsnd_mod_to_ssiu(%struct.rsnd_mod* %9)
  store %struct.rsnd_ssiu* %10, %struct.rsnd_ssiu** %7, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = call i32 @rsnd_mod_id_sub(%struct.rsnd_mod* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.rsnd_ssiu*, %struct.rsnd_ssiu** %7, align 8
  %14 = getelementptr inbounds %struct.rsnd_ssiu, %struct.rsnd_ssiu* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  ret i32* %18
}

declare dso_local %struct.rsnd_ssiu* @rsnd_mod_to_ssiu(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_id_sub(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
