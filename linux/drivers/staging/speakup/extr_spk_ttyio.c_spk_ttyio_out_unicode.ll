; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_out_unicode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_spk_ttyio.c_spk_ttyio_out_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spk_synth = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spk_synth*, i32)* @spk_ttyio_out_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spk_ttyio_out_unicode(%struct.spk_synth* %0, i32 %1) #0 {
  %3 = alloca %struct.spk_synth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @spk_ttyio_out(%struct.spk_synth* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2048
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 6
  %19 = or i32 192, %18
  %20 = call i32 @spk_ttyio_out(%struct.spk_synth* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 63
  %24 = or i32 128, %23
  %25 = call i32 @spk_ttyio_out(%struct.spk_synth* %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %12
  %29 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 12
  %32 = or i32 224, %31
  %33 = call i32 @spk_ttyio_out(%struct.spk_synth* %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 63
  %38 = or i32 128, %37
  %39 = call i32 @spk_ttyio_out(%struct.spk_synth* %34, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 63
  %45 = or i32 128, %44
  %46 = call i32 @spk_ttyio_out(%struct.spk_synth* %42, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %28, %15
  br label %50

50:                                               ; preds = %49, %8
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @spk_ttyio_out(%struct.spk_synth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
