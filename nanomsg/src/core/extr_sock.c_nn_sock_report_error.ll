; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_report_error.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_sock.c_nn_sock_report_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i8* }
%struct.nn_ep = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"nanomsg: socket.%s[%s]: Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"nanomsg: socket.%s: Error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sock_report_error(%struct.nn_sock* %0, %struct.nn_ep* %1, i32 %2) #0 {
  %4 = alloca %struct.nn_sock*, align 8
  %5 = alloca %struct.nn_ep*, align 8
  %6 = alloca i32, align 4
  store %struct.nn_sock* %0, %struct.nn_sock** %4, align 8
  store %struct.nn_ep* %1, %struct.nn_ep** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @nn_global_print_errors()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %35

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %35

14:                                               ; preds = %10
  %15 = load %struct.nn_ep*, %struct.nn_ep** %5, align 8
  %16 = icmp ne %struct.nn_ep* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %20 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.nn_ep*, %struct.nn_ep** %5, align 8
  %23 = call i8* @nn_ep_getaddr(%struct.nn_ep* %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @nn_strerror(i32 %24)
  %26 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23, i8* %25)
  br label %35

27:                                               ; preds = %14
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.nn_sock*, %struct.nn_sock** %4, align 8
  %30 = getelementptr inbounds %struct.nn_sock, %struct.nn_sock* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @nn_strerror(i32 %32)
  %34 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %33)
  br label %35

35:                                               ; preds = %9, %13, %27, %17
  ret void
}

declare dso_local i32 @nn_global_print_errors(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i8* @nn_ep_getaddr(%struct.nn_ep*) #1

declare dso_local i8* @nn_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
