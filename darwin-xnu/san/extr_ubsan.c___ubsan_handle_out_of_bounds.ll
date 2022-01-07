; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c___ubsan_handle_out_of_bounds.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_ubsan.c___ubsan_handle_out_of_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsan_oob_desc = type { i32 }
%struct.ubsan_violation = type { i32*, %struct.ubsan_oob_desc*, i32, i32, i32 }

@UBSAN_OOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_out_of_bounds(%struct.ubsan_oob_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.ubsan_oob_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubsan_violation, align 8
  store %struct.ubsan_oob_desc* %0, %struct.ubsan_oob_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %5, i32 0, i32 0
  %7 = load i32, i32* @UBSAN_OOB, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %5, i32 0, i32 1
  %11 = load %struct.ubsan_oob_desc*, %struct.ubsan_oob_desc** %3, align 8
  store %struct.ubsan_oob_desc* %11, %struct.ubsan_oob_desc** %10, align 8
  %12 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %5, i32 0, i32 2
  %13 = load %struct.ubsan_oob_desc*, %struct.ubsan_oob_desc** %3, align 8
  %14 = getelementptr inbounds %struct.ubsan_oob_desc, %struct.ubsan_oob_desc* %13, i32 0, i32 0
  %15 = ptrtoint i32* %14 to i32
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %5, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ubsan_violation, %struct.ubsan_violation* %5, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = call i32 @ubsan_handle(%struct.ubsan_violation* %5, i32 0)
  ret void
}

declare dso_local i32 @ubsan_handle(%struct.ubsan_violation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
