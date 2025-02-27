; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_allowed_methods_eventcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_allowed_methods_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@exit_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @http_allowed_methods_eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_allowed_methods_eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @BEV_EVENT_EOF, align 2
  %17 = sext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = and i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %23 = call i32 @bufferevent_get_input(%struct.bufferevent* %22)
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %25 = call i32 @evbuffer_remove(i32 %23, i8* %24, i32 4095)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %41 = call i8* @strdup(i8* %40)
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* @exit_base, align 4
  %45 = call i32 @event_base_loopexit(i32 %44, i32* null)
  br label %46

46:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @evbuffer_remove(i32, i8*, i32) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
