; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_extable.c_cmp_ex_search.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_extable.c_cmp_ex_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_table_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_ex_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_ex_search(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.exception_table_entry*
  store %struct.exception_table_entry* %9, %struct.exception_table_entry** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %15 = call i64 @ex_to_insn(%struct.exception_table_entry* %14)
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %21 = call i64 @ex_to_insn(%struct.exception_table_entry* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @ex_to_insn(%struct.exception_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
