; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_af_inet__scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_sockaddr.c_af_inet__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c", port: %d, addr: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sockaddr*, i8*, i64)* @af_inet__scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @af_inet__scnprintf(%struct.sockaddr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca [16 x i8], align 16
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %23 = call i32 @inet_ntop(i32 %19, i32* %21, i8* %22, i32 16)
  %24 = call i64 @scnprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %23)
  ret i64 %24
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
