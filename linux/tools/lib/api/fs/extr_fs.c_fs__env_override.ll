; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__env_override.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__env_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"_PATH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs*)* @fs__env_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs__env_override(%struct.fs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %3, align 8
  %9 = load %struct.fs*, %struct.fs** %3, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strlen(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 5
  %15 = add i64 %14, 1
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.fs*, %struct.fs** %3, align 8
  %19 = getelementptr inbounds %struct.fs, %struct.fs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @memcpy(i8* %17, i32 %20, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @mem_toupper(i8* %17, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %17, i64 %25
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = call i8* @getenv(i8* %17)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.fs*, %struct.fs** %3, align 8
  %34 = getelementptr inbounds %struct.fs, %struct.fs* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.fs*, %struct.fs** %3, align 8
  %36 = getelementptr inbounds %struct.fs, %struct.fs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strncpy(i32 %37, i8* %38, i32 4)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %31
  %41 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mem_toupper(i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
