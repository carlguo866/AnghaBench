; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_getregpname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_cr16-dis.c_getregpname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@cr16_regptab = common dso_local global %struct.TYPE_3__* null, align 8
@CR16_RP_REGTYPE = common dso_local global i64 0, align 8
@ILLEGAL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @getregpname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getregpname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cr16_regptab, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %7
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CR16_RP_REGTYPE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i8*, i8** @ILLEGAL, align 8
  store i8* %15, i8** %2, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
