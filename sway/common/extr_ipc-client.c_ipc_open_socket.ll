; ModuleID = '/home/carl/AnghaBench/sway/common/extr_ipc-client.c_ipc_open_socket.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_ipc-client.c_ipc_open_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i64*, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to open Unix socket\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_open_socket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sockaddr_un, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @AF_UNIX, align 4
  %7 = load i32, i32* @SOCK_STREAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @sway_abort(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @AF_UNIX, align 4
  %14 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strncpy(i64* %16, i8* %17, i32 7)
  %19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 7
  store i64 0, i64* %21, align 8
  store i32 16, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @connect(i32 %22, %struct.sockaddr* %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 (i8*, ...) @sway_abort(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @sway_abort(i8*, ...) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
