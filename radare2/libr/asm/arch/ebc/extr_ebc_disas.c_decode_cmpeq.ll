; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_cmpeq.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_cmpeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EBC_INSTR_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%deq\00", align 1
@instr_names = common dso_local global i8** null, align 8
@EBC_CMPLTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @decode_cmpeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cmpeq(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @TEST_BIT(i32 %8, i32 6)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 64, i32 32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EBC_INSTR_MAXLEN, align 4
  %17 = load i8**, i8*** @instr_names, align 8
  %18 = load i64, i64* @EBC_CMPLTE, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = call i32 @decode_cmp(i32* %23, %struct.TYPE_4__* %24)
  ret i32 %25
}

declare dso_local i64 @TEST_BIT(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @decode_cmp(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
