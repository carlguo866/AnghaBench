; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_dstr.c_dstr_log_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_dstr.c_dstr_log_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"4-bit\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EPP-8\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"EPP-16\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EPP-32\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: dstr %s, DataStor EP2000 at 0x%x, \00", align 1
@DSTR_VERSION = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"mode %d (%s), delay %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @dstr_log_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dstr_log_adapter(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast [5 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 40, i1 false)
  %9 = bitcast i8* %8 to [5 x i8*]*
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %11, align 8
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %9, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %14, align 16
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** @DSTR_VERSION, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %17, i8* %18, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %25, i8* %30, i32 %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printk(i8*, i64, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
