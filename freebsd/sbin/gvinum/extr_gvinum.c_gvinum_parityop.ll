; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_parityop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/gvinum/extr_gvinum.c_gvinum_parityop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rebuildparity\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"checkparity\00", align 1
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"fv\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@GV_FLAG_V = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid flag '%c'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"usage: %s [-f] [-v] <plex>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"VINUM\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"plex\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32)* @gvinum_parityop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gvinum_parityop(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gctl_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %16

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %16

16:                                               ; preds = %15, %14
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %32 [
    i32 102, label %24
    i32 118, label %28
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @GV_FLAG_F, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* @GV_FLAG_V, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %75

35:                                               ; preds = %28, %24
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* @optind, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @optind, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %47)
  br label %75

49:                                               ; preds = %36
  %50 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %50, %struct.gctl_req** %7, align 8
  %51 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %52 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* %54)
  %56 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %57 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 4, i32* %6)
  %58 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %59 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 4, i32* %8)
  %60 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 -1, i8* %63)
  %65 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %66 = call i8* @gctl_issue(%struct.gctl_req* %65)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %49
  %73 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %74 = call i32 @gctl_free(%struct.gctl_req* %73)
  br label %75

75:                                               ; preds = %72, %46, %32
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
