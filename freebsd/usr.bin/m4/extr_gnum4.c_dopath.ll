; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_dopath.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_dopath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_entry = type { i8*, %struct.path_entry* }
%struct.input_file = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@first = common dso_local global %struct.path_entry* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_file* (%struct.input_file*, i8*)* @dopath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_file* @dopath(%struct.input_file* %0, i8* %1) #0 {
  %3 = alloca %struct.input_file*, align 8
  %4 = alloca %struct.input_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.path_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.input_file* %0, %struct.input_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.path_entry*, %struct.path_entry** @first, align 8
  store %struct.path_entry* %15, %struct.path_entry** %8, align 8
  br label %16

16:                                               ; preds = %34, %2
  %17 = load %struct.path_entry*, %struct.path_entry** %8, align 8
  %18 = icmp ne %struct.path_entry* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = trunc i64 %12 to i32
  %21 = load %struct.path_entry*, %struct.path_entry** %8, align 8
  %22 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @snprintf(i8* %14, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.input_file*, %struct.input_file** %4, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @set_input(%struct.input_file* %29, i32* %30, i8* %14)
  %32 = load %struct.input_file*, %struct.input_file** %4, align 8
  store %struct.input_file* %32, %struct.input_file** %3, align 8
  store i32 1, i32* %10, align 4
  br label %39

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.path_entry*, %struct.path_entry** %8, align 8
  %36 = getelementptr inbounds %struct.path_entry, %struct.path_entry* %35, i32 0, i32 1
  %37 = load %struct.path_entry*, %struct.path_entry** %36, align 8
  store %struct.path_entry* %37, %struct.path_entry** %8, align 8
  br label %16

38:                                               ; preds = %16
  store %struct.input_file* null, %struct.input_file** %3, align 8
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load %struct.input_file*, %struct.input_file** %3, align 8
  ret %struct.input_file* %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @set_input(%struct.input_file*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
