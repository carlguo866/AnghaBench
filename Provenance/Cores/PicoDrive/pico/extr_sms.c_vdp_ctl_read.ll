; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_ctl_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_ctl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"VDP sr: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @vdp_ctl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @vdp_ctl_read() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %3 = shl i32 %2, 7
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* %1, align 1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %5 = load i32, i32* @EL_SR, align 4
  %6 = load i8, i8* %1, align 1
  %7 = call i32 @elprintf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8 zeroext %6)
  %8 = load i8, i8* %1, align 1
  ret i8 %8
}

declare dso_local i32 @elprintf(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
