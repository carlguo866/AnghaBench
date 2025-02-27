; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_clocktime.c_ntp_to_year.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_clocktime.c_ntp_to_year.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DAY_NTP_STARTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @ntp_to_year to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ntp_to_year(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @ntpcal_ntp_to_ntp(i32 %7, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = call i64 @ntpcal_daysplit(i32* %3)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = bitcast %struct.TYPE_4__* %4 to i8*
  %12 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DAY_NTP_STARTS, align 8
  %16 = add nsw i64 %14, %15
  %17 = sub nsw i64 %16, 1
  %18 = call i64 @ntpcal_split_eradays(i64 %17, i32* null)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = bitcast %struct.TYPE_4__* %4 to i8*
  %21 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  ret i64 %24
}

declare dso_local i32 @ntpcal_ntp_to_ntp(i32, i32*) #1

declare dso_local i64 @ntpcal_daysplit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ntpcal_split_eradays(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
