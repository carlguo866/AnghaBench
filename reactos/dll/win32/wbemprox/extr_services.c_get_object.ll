; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_services.c_get_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_services.c_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }

@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_object(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @parse_path(i32* %9, %struct.path** %7)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.path*, %struct.path** %7, align 8
  %18 = call i64 @create_instance_enum(%struct.path* %17, i32** %6)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.path*, %struct.path** %7, align 8
  %24 = call i32 @free_path(%struct.path* %23)
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %3, align 8
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.path*, %struct.path** %7, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = call i64 @create_class_object(i32 %29, i32* %30, i32 0, i32* null, i32** %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IEnumWbemClassObject_Release(i32* %33)
  %35 = load %struct.path*, %struct.path** %7, align 8
  %36 = call i32 @free_path(%struct.path* %35)
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %26, %22, %14
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @parse_path(i32*, %struct.path**) #1

declare dso_local i64 @create_instance_enum(%struct.path*, i32**) #1

declare dso_local i32 @free_path(%struct.path*) #1

declare dso_local i64 @create_class_object(i32, i32*, i32, i32*, i32**) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
