; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2HBlankIN.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2HBlankIN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@Vdp2Regs = common dso_local global %struct.TYPE_4__* null, align 8
@yabsys = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SSH2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Vdp2HBlankIN() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = or i32 %3, 4
  store i32 %4, i32* %2, align 4
  %5 = call i32 (...) @ScuSendHBlankIN()
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @yabsys, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @SSH2, align 4
  %10 = call i32 @SH2SendInterrupt(i32 %9, i32 65, i32 2)
  br label %11

11:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @ScuSendHBlankIN(...) #1

declare dso_local i32 @SH2SendInterrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
