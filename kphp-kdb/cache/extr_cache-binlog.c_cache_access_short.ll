; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_access_short.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-binlog.c_cache_access_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_cache_access_short = type { i32 }

@filtered_uri_short_md5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"LEV_CACHE_ACCESS_SHORT\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"+%d\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_cache_access_short*, i32)* @cache_access_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_access_short(%struct.lev_cache_access_short* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_cache_access_short*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [33 x i8], align 16
  store %struct.lev_cache_access_short* %0, %struct.lev_cache_access_short** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lev_cache_access_short*, %struct.lev_cache_access_short** %3, align 8
  %7 = getelementptr inbounds %struct.lev_cache_access_short, %struct.lev_cache_access_short* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %10 = call i32 @a2hex(i32 %8, i32 8, i8* %9)
  %11 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @filtered_uri_short_md5, align 4
  %13 = call i32 @strncmp(i8* %11, i32 %12, i32 16)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = call i64 @dump_line_header(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* @out, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0
  %22 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %18, %15
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @a2hex(i32, i32, i8*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
