; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_bufferevent.c_reader_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_bufferevent.c_reader_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Read invoked on %d.\00", align 1
@n_reads_invoked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @reader_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reader_readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %6 = call i64 @bufferevent_getfd(%struct.bufferevent* %5)
  %7 = trunc i64 %6 to i32
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @TT_BLATHER(i8* %9)
  %11 = load i32, i32* @n_reads_invoked, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @n_reads_invoked, align 4
  ret void
}

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i64 @bufferevent_getfd(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
