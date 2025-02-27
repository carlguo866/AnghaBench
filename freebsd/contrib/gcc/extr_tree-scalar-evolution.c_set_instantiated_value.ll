; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_set_instantiated_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_set_instantiated_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scev_info_str = type { i8*, i8* }

@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @set_instantiated_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_instantiated_value(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scev_info_str*, align 8
  %8 = alloca %struct.scev_info_str, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.scev_info_str, %struct.scev_info_str* %8, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @INSERT, align 4
  %14 = call i64* @htab_find_slot(i32 %12, %struct.scev_info_str* %8, i32 %13)
  store i64* %14, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @new_scev_info_str(i8* %19)
  %21 = load i64*, i64** %9, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.scev_info_str*
  store %struct.scev_info_str* %25, %struct.scev_info_str** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.scev_info_str*, %struct.scev_info_str** %7, align 8
  %28 = getelementptr inbounds %struct.scev_info_str, %struct.scev_info_str* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i64* @htab_find_slot(i32, %struct.scev_info_str*, i32) #1

declare dso_local i64 @new_scev_info_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
