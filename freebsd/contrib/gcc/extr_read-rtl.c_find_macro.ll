; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_find_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_find_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_group = type { i32, i32 (i8*, i32*)*, i32 }
%struct.mapping = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macro_group*, i8*, i32*)* @find_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_macro(%struct.macro_group* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.macro_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mapping*, align 8
  store %struct.macro_group* %0, %struct.macro_group** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.macro_group*, %struct.macro_group** %5, align 8
  %10 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @htab_find(i32 %11, i8** %6)
  %13 = inttoptr i64 %12 to %struct.mapping*
  store %struct.mapping* %13, %struct.mapping** %8, align 8
  %14 = load %struct.mapping*, %struct.mapping** %8, align 8
  %15 = icmp ne %struct.mapping* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.mapping*, %struct.mapping** %8, align 8
  %18 = getelementptr inbounds %struct.mapping, %struct.mapping* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.macro_group*, %struct.macro_group** %5, align 8
  %21 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load %struct.macro_group*, %struct.macro_group** %5, align 8
  %26 = getelementptr inbounds %struct.macro_group, %struct.macro_group* %25, i32 0, i32 1
  %27 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 %27(i8* %28, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @htab_find(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
