; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_unknown.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_read_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EL_ANOMALY = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ssp FIXME: unknown read @ %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unknown() #0 {
  %1 = load i32, i32* @EL_ANOMALY, align 4
  %2 = load i32, i32* @EL_SVP, align 4
  %3 = or i32 %1, %2
  %4 = call i32 (...) @GET_PPC_OFFS()
  %5 = call i32 @elprintf(i32 %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0
}

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
