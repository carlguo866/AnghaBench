; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_addrcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_addrcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @addrcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrcmp(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %10 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %39 [
    i32 129, label %21
    i32 128, label %30
  ]

21:                                               ; preds = %17
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %7, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %8, align 8
  store i32 4, i32* %6, align 4
  br label %40

30:                                               ; preds = %17
  %31 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = bitcast %struct.sockaddr* %35 to %struct.sockaddr_in6*
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %8, align 8
  store i32 16, i32* %6, align 4
  br label %40

39:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %45

40:                                               ; preds = %30, %21
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memcmp(i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %39, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
