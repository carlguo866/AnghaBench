; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_invalidate_edb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_invalidate_edb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { %struct.asd_dma_tok** }
%struct.asd_dma_tok = type { i32 }
%struct.TYPE_3__ = type { %struct.empty_scb }
%struct.empty_scb = type { i64, %struct.sg_el* }
%struct.sg_el = type { i64 }

@ASD_EDB_SIZE = common dso_local global i32 0, align 4
@ELEMENT_NOT_VALID = common dso_local global i64 0, align 8
@ASD_EDBS_PER_SCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"couldn't post escb, err:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asd_invalidate_edb(%struct.asd_ascb* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_seq_data*, align 8
  %6 = alloca %struct.empty_scb*, align 8
  %7 = alloca %struct.sg_el*, align 8
  %8 = alloca %struct.asd_dma_tok*, align 8
  %9 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %11 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.asd_seq_data* %13, %struct.asd_seq_data** %5, align 8
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %15 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.empty_scb* %17, %struct.empty_scb** %6, align 8
  %18 = load %struct.empty_scb*, %struct.empty_scb** %6, align 8
  %19 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %18, i32 0, i32 1
  %20 = load %struct.sg_el*, %struct.sg_el** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %20, i64 %22
  store %struct.sg_el* %23, %struct.sg_el** %7, align 8
  %24 = load %struct.asd_seq_data*, %struct.asd_seq_data** %5, align 8
  %25 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %24, i32 0, i32 0
  %26 = load %struct.asd_dma_tok**, %struct.asd_dma_tok*** %25, align 8
  %27 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %28 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.asd_dma_tok*, %struct.asd_dma_tok** %26, i64 %32
  %34 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %33, align 8
  store %struct.asd_dma_tok* %34, %struct.asd_dma_tok** %8, align 8
  %35 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %8, align 8
  %36 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ASD_EDB_SIZE, align 4
  %39 = call i32 @memset(i32 %37, i32 0, i32 %38)
  %40 = load i64, i64* @ELEMENT_NOT_VALID, align 8
  %41 = load %struct.sg_el*, %struct.sg_el** %7, align 8
  %42 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.empty_scb*, %struct.empty_scb** %6, align 8
  %46 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.empty_scb*, %struct.empty_scb** %6, align 8
  %50 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %2
  %54 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.empty_scb*, %struct.empty_scb** %6, align 8
  %57 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.empty_scb*, %struct.empty_scb** %6, align 8
  %64 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %63, i32 0, i32 1
  %65 = load %struct.sg_el*, %struct.sg_el** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %65, i64 %67
  %69 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %75 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %74, i32 0, i32 2
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %80 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %79, i32 0, i32 2
  %81 = call i32 @list_del_init(i32* %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %84 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %87 = call i32 @asd_post_escb_list(%struct.TYPE_4__* %85, %struct.asd_ascb* %86, i32 1)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @asd_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %82
  br label %94

94:                                               ; preds = %93, %2
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @asd_post_escb_list(%struct.TYPE_4__*, %struct.asd_ascb*, i32) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
