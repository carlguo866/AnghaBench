; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_get_openssl_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_get_openssl_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bufferevent_get_openssl_error(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = call i32 @BEV_LOCK(%struct.bufferevent* %5)
  %7 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %8 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %7)
  store %struct.bufferevent_openssl* %8, %struct.bufferevent_openssl** %4, align 8
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %10 = icmp ne %struct.bufferevent_openssl* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %13 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %18 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %21 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %16, %11, %1
  %27 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %28 = call i32 @BEV_UNLOCK(%struct.bufferevent* %27)
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
