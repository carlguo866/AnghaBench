; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_serve_header.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_enduser_setup.c_enduser_setup_http_serve_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"enduser_setup_http_serve_header\00", align 1
@TCP_WRITE_FLAG_COPY = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"http_serve_header failed on tcp_write\00", align 1
@ENDUSER_SETUP_ERR_UNKOWN_ERROR = common dso_local global i32 0, align 4
@ENDUSER_SETUP_ERR_NONFATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_pcb*, i8*, i32)* @enduser_setup_http_serve_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enduser_setup_http_serve_header(%struct.tcp_pcb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_pcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @ENDUSER_SETUP_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TCP_WRITE_FLAG_COPY, align 4
  %13 = call i64 @tcp_write(%struct.tcp_pcb* %9, i8* %10, i32 %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ERR_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.tcp_pcb*, %struct.tcp_pcb** %4, align 8
  %19 = call i32 @deferred_close(%struct.tcp_pcb* %18)
  %20 = load i32, i32* @ENDUSER_SETUP_ERR_UNKOWN_ERROR, align 4
  %21 = load i32, i32* @ENDUSER_SETUP_ERR_NONFATAL, align 4
  %22 = call i32 @ENDUSER_SETUP_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local i32 @ENDUSER_SETUP_DEBUG(i8*) #1

declare dso_local i64 @tcp_write(%struct.tcp_pcb*, i8*, i32, i32) #1

declare dso_local i32 @deferred_close(%struct.tcp_pcb*) #1

declare dso_local i32 @ENDUSER_SETUP_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
