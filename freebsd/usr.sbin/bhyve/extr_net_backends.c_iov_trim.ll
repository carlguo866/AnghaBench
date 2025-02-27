; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_iov_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_iov_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iovec* (%struct.iovec*, i32*, i32)* @iov_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iovec* @iov_trim(%struct.iovec* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iovec*, %struct.iovec** %4, align 8
  %9 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i64 0
  %10 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp uge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.iovec*, %struct.iovec** %4, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %20, %16
  store i32 %21, i32* %19, align 8
  %22 = load %struct.iovec*, %struct.iovec** %4, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i64 0
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.iovec*, %struct.iovec** %4, align 8
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i64 1
  store %struct.iovec* %37, %struct.iovec** %7, align 8
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.iovec*, %struct.iovec** %4, align 8
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i64 0
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.iovec*, %struct.iovec** %4, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i64 0
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.iovec*, %struct.iovec** %4, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i64 0
  store %struct.iovec* %52, %struct.iovec** %7, align 8
  br label %53

53:                                               ; preds = %38, %27
  %54 = load %struct.iovec*, %struct.iovec** %7, align 8
  ret %struct.iovec* %54
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
