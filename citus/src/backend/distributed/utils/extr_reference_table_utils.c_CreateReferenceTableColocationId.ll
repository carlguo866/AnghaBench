; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_CreateReferenceTableColocationId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_CreateReferenceTableColocationId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CreateReferenceTableColocationId() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  store i64 %5, i64* %1, align 8
  store i32 1, i32* %2, align 4
  %6 = load i32, i32* @InvalidOid, align 4
  store i32 %6, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @ColocationId(i32 %7, i32 %8, i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @CreateColocationGroup(i32 %15, i32 %16, i32 %17)
  store i64 %18, i64* %1, align 8
  br label %19

19:                                               ; preds = %14, %0
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

declare dso_local i64 @ColocationId(i32, i32, i32) #1

declare dso_local i64 @CreateColocationGroup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
