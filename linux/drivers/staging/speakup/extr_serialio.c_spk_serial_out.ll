; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_serialio.c_spk_serial_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spk_synth = type { i64 }

@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spk_synth*, i8)* @spk_serial_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spk_serial_out(%struct.spk_synth* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spk_synth*, align 8
  %5 = alloca i8, align 1
  store %struct.spk_synth* %0, %struct.spk_synth** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %7 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.spk_synth*, %struct.spk_synth** %4, align 8
  %12 = call i64 @spk_wait_for_xmitr(%struct.spk_synth* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8, i8* %5, align 1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 4
  %17 = call i32 @outb_p(i8 signext %15, i32 %16)
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @spk_wait_for_xmitr(%struct.spk_synth*) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
