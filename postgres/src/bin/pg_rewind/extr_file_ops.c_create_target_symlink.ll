; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_file_ops.c_create_target_symlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_file_ops.c_create_target_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@dry_run = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@datadir_target = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"could not create symbolic link at \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @create_target_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_target_symlink(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i64, i64* @dry_run, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %26

15:                                               ; preds = %2
  %16 = trunc i64 %9 to i32
  %17 = load i8*, i8** @datadir_target, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @snprintf(i8* %11, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @symlink(i8* %20, i8* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @pg_fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %25

25:                                               ; preds = %23, %15
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %30 [
    i32 0, label %29
    i32 1, label %29
  ]

29:                                               ; preds = %26, %26
  ret void

30:                                               ; preds = %26
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i32 @pg_fatal(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
