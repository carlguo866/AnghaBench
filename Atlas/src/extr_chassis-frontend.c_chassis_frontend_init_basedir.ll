; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_basedir.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_basedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"%s: --basedir option must be an absolute path, but was %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Failed to get base directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_frontend_init_basedir(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @g_path_is_absolute(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @G_STRLOC, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i32, ...) @g_critical(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17)
  store i32 -1, i32* %3, align 4
  br label %31

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @chassis_get_basedir(i8* %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @G_STRLOC, align 4
  %27 = call i32 (i8*, i32, ...) @g_critical(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %3, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %25, %19, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @g_path_is_absolute(i8*) #1

declare dso_local i32 @g_critical(i8*, i32, ...) #1

declare dso_local i8* @chassis_get_basedir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
