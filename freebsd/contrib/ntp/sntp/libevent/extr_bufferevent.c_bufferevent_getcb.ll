; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_getcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_getcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_getcb(%struct.bufferevent* %0, i32* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %12 = call i32 @BEV_LOCK(%struct.bufferevent* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %25 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i8**, i8*** %10, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %10, align 8
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %46 = call i32 @BEV_UNLOCK(%struct.bufferevent* %45)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
