; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_hisax_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_hisax_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.IsdnCardState*, i64 }
%struct.IsdnCardState = type { %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.hisax_d_if* }
%struct.hisax_d_if = type { i32, i32, %struct.TYPE_15__, %struct.hisax_b_if**, %struct.IsdnCardState*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.hisax_b_if = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@HISAX_MAX_CARDS = common dso_local global i32 0, align 4
@cards = common dso_local global %struct.TYPE_16__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@ISDN_CTYPE_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@nrcards = common dso_local global i32 0, align 4
@hisax_setup_card_dynamic = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hisax_cardmsg = common dso_local global i32 0, align 4
@hisax_bh = common dso_local global i32 0, align 4
@hisax_d_l2l1 = common dso_local global i32 0, align 4
@hisax_bc_setstack = common dso_local global i32 0, align 4
@hisax_bc_close = common dso_local global i32 0, align 4
@hisax_b_l1l2 = common dso_local global i32 0, align 4
@hisax_d_l1l2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisax_register(%struct.hisax_d_if* %0, %struct.hisax_b_if** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisax_d_if*, align 8
  %7 = alloca %struct.hisax_b_if**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca %struct.IsdnCardState*, align 8
  store %struct.hisax_d_if* %0, %struct.hisax_d_if** %6, align 8
  store %struct.hisax_b_if** %1, %struct.hisax_b_if*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %28, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @HISAX_MAX_CARDS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cards, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @HISAX_MAX_CARDS, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %159

38:                                               ; preds = %31
  %39 = load i64, i64* @ISDN_CTYPE_DYNAMIC, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cards, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i64 %39, i64* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cards, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  %55 = load i32, i32* @nrcards, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @nrcards, align 4
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %59 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %60 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @hisax_setup_card_dynamic, align 4
  %63 = call i32 @checkcard(i32 %57, i8* %58, i32* null, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %38
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cards, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @nrcards, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* @nrcards, align 4
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %159

76:                                               ; preds = %38
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cards, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %81, align 8
  store %struct.IsdnCardState* %82, %struct.IsdnCardState** %13, align 8
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %84 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %85 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %84, i32 0, i32 4
  store %struct.IsdnCardState* %83, %struct.IsdnCardState** %85, align 8
  %86 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store %struct.hisax_d_if* %86, %struct.hisax_d_if** %89, align 8
  %90 = load i32, i32* @hisax_cardmsg, align 4
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %92 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 2
  %95 = load i32, i32* @hisax_bh, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load i32, i32* @hisax_d_l2l1, align 4
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %99 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %97, i32* %105, align 4
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %145, %76
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %148

109:                                              ; preds = %106
  %110 = load i32, i32* @hisax_bc_setstack, align 4
  %111 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %112 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* @hisax_bc_close, align 4
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  %120 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 4
  %126 = load i32, i32* @hisax_b_l1l2, align 4
  %127 = load %struct.hisax_b_if**, %struct.hisax_b_if*** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.hisax_b_if*, %struct.hisax_b_if** %127, i64 %129
  %131 = load %struct.hisax_b_if*, %struct.hisax_b_if** %130, align 8
  %132 = getelementptr inbounds %struct.hisax_b_if, %struct.hisax_b_if* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  %134 = load %struct.hisax_b_if**, %struct.hisax_b_if*** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.hisax_b_if*, %struct.hisax_b_if** %134, i64 %136
  %138 = load %struct.hisax_b_if*, %struct.hisax_b_if** %137, align 8
  %139 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %140 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %139, i32 0, i32 3
  %141 = load %struct.hisax_b_if**, %struct.hisax_b_if*** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.hisax_b_if*, %struct.hisax_b_if** %141, i64 %143
  store %struct.hisax_b_if* %138, %struct.hisax_b_if** %144, align 8
  br label %145

145:                                              ; preds = %109
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %106

148:                                              ; preds = %106
  %149 = load i32, i32* @hisax_d_l1l2, align 4
  %150 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %151 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %154 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %153, i32 0, i32 1
  %155 = call i32 @skb_queue_head_init(i32* %154)
  %156 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %157 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %156, i32 0, i32 0
  %158 = call i32 @clear_bit(i32 0, i32* %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %148, %66, %35
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @checkcard(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
