; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_builtin_unreachable.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_builtin_unreachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unreachable_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"calling __builtin_unreachable()\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"can't return from __builtin_unreachable()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_builtin_unreachable(%struct.unreachable_data* %0) #0 {
  %2 = alloca %struct.unreachable_data*, align 8
  %3 = alloca i64, align 8
  store %struct.unreachable_data* %0, %struct.unreachable_data** %2, align 8
  %4 = load %struct.unreachable_data*, %struct.unreachable_data** %2, align 8
  %5 = getelementptr inbounds %struct.unreachable_data, %struct.unreachable_data* %4, i32 0, i32 0
  %6 = call i32 @ubsan_prologue(i32* %5, i64* %3)
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @ubsan_epilogue(i64* %3)
  %9 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ubsan_prologue(i32*, i64*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ubsan_epilogue(i64*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
