; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_fill_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_fill_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@DEMANGLE_COMPONENT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_fill_name(%struct.demangle_component* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.demangle_component* %0, %struct.demangle_component** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %9 = icmp eq %struct.demangle_component* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %33

17:                                               ; preds = %13
  %18 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %19 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @DEMANGLE_COMPONENT_NAME, align 4
  %21 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %22 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %25 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i8* %23, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %30 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %17, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
