; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_set_synthetic_offset_for_iv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cpx_set_synthetic_offset_for_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpx = type { i32 }

@CPX_SYNTHETIC_OFFSET_FOR_IV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpx_set_synthetic_offset_for_iv(%struct.cpx* %0, i32 %1) #0 {
  %3 = alloca %struct.cpx*, align 8
  %4 = alloca i32, align 4
  store %struct.cpx* %0, %struct.cpx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.cpx*, %struct.cpx** %3, align 8
  %9 = getelementptr inbounds %struct.cpx, %struct.cpx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CPX_SYNTHETIC_OFFSET_FOR_IV, align 4
  %12 = call i32 @SET(i32 %10, i32 %11)
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.cpx*, %struct.cpx** %3, align 8
  %15 = getelementptr inbounds %struct.cpx, %struct.cpx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CPX_SYNTHETIC_OFFSET_FOR_IV, align 4
  %18 = call i32 @CLR(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %7
  ret void
}

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
