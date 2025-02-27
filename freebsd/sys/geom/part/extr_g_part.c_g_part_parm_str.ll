; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_parm_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_parm_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@ENOATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%d %s '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gctl_req*, i8*, i8**)* @g_part_parm_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_parm_str(%struct.gctl_req* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %9, i8* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOATTR, align 4
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29, i8* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %20, %16
  %34 = load i8*, i8** %8, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %26, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
