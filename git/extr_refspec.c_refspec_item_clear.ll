; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_refspec_item_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_refspec_item_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec_item = type { i64, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refspec_item_clear(%struct.refspec_item* %0) #0 {
  %2 = alloca %struct.refspec_item*, align 8
  store %struct.refspec_item* %0, %struct.refspec_item** %2, align 8
  %3 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %4 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @FREE_AND_NULL(i32 %5)
  %7 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %8 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @FREE_AND_NULL(i32 %9)
  %11 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %12 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %14 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %16 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.refspec_item*, %struct.refspec_item** %2, align 8
  %18 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
