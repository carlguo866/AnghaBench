; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_rtaddrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvd/extr_if.c_get_rtaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, %struct.sockaddr**)* @get_rtaddrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rtaddrs(i32 %0, %struct.sockaddr* %1, %struct.sockaddr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %32, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @RTAX_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %20, i64 %22
  store %struct.sockaddr* %19, %struct.sockaddr** %23, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = call i32 @NEXT_SA(%struct.sockaddr* %24)
  br label %31

26:                                               ; preds = %12
  %27 = load %struct.sockaddr**, %struct.sockaddr*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %27, i64 %29
  store %struct.sockaddr* null, %struct.sockaddr** %30, align 8
  br label %31

31:                                               ; preds = %26, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %8

35:                                               ; preds = %8
  ret void
}

declare dso_local i32 @NEXT_SA(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
