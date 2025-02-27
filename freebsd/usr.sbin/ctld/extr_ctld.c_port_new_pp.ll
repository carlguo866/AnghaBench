; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_new_pp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_new_pp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i8*, %struct.pport*, %struct.target*, %struct.conf* }
%struct.conf = type { i32 }
%struct.target = type { i32, i32 }
%struct.pport = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"duplicate port \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@p_next = common dso_local global i32 0, align 4
@p_ts = common dso_local global i32 0, align 4
@p_pps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.port* @port_new_pp(%struct.conf* %0, %struct.target* %1, %struct.pport* %2) #0 {
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca %struct.pport*, align 8
  %8 = alloca %struct.port*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %5, align 8
  store %struct.target* %1, %struct.target** %6, align 8
  store %struct.pport* %2, %struct.pport** %7, align 8
  %11 = load %struct.pport*, %struct.pport** %7, align 8
  %12 = getelementptr inbounds %struct.pport, %struct.pport* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.target*, %struct.target** %6, align 8
  %15 = getelementptr inbounds %struct.target, %struct.target* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.conf*, %struct.conf** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* @port_find(%struct.conf* %23, i8* %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @log_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @free(i8* %30)
  store %struct.port* null, %struct.port** %4, align 8
  br label %67

32:                                               ; preds = %22
  %33 = call %struct.port* @calloc(i32 1, i32 32)
  store %struct.port* %33, %struct.port** %8, align 8
  %34 = load %struct.port*, %struct.port** %8, align 8
  %35 = icmp eq %struct.port* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.conf*, %struct.conf** %5, align 8
  %40 = load %struct.port*, %struct.port** %8, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 3
  store %struct.conf* %39, %struct.conf** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.port*, %struct.port** %8, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.conf*, %struct.conf** %5, align 8
  %46 = getelementptr inbounds %struct.conf, %struct.conf* %45, i32 0, i32 0
  %47 = load %struct.port*, %struct.port** %8, align 8
  %48 = load i32, i32* @p_next, align 4
  %49 = call i32 @TAILQ_INSERT_TAIL(i32* %46, %struct.port* %47, i32 %48)
  %50 = load %struct.target*, %struct.target** %6, align 8
  %51 = getelementptr inbounds %struct.target, %struct.target* %50, i32 0, i32 0
  %52 = load %struct.port*, %struct.port** %8, align 8
  %53 = load i32, i32* @p_ts, align 4
  %54 = call i32 @TAILQ_INSERT_TAIL(i32* %51, %struct.port* %52, i32 %53)
  %55 = load %struct.target*, %struct.target** %6, align 8
  %56 = load %struct.port*, %struct.port** %8, align 8
  %57 = getelementptr inbounds %struct.port, %struct.port* %56, i32 0, i32 2
  store %struct.target* %55, %struct.target** %57, align 8
  %58 = load %struct.pport*, %struct.pport** %7, align 8
  %59 = getelementptr inbounds %struct.pport, %struct.pport* %58, i32 0, i32 0
  %60 = load %struct.port*, %struct.port** %8, align 8
  %61 = load i32, i32* @p_pps, align 4
  %62 = call i32 @TAILQ_INSERT_TAIL(i32* %59, %struct.port* %60, i32 %61)
  %63 = load %struct.pport*, %struct.pport** %7, align 8
  %64 = load %struct.port*, %struct.port** %8, align 8
  %65 = getelementptr inbounds %struct.port, %struct.port* %64, i32 0, i32 1
  store %struct.pport* %63, %struct.pport** %65, align 8
  %66 = load %struct.port*, %struct.port** %8, align 8
  store %struct.port* %66, %struct.port** %4, align 8
  br label %67

67:                                               ; preds = %38, %27
  %68 = load %struct.port*, %struct.port** %4, align 8
  ret %struct.port* %68
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32* @port_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.port* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
