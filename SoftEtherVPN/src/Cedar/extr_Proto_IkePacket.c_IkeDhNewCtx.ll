; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeDhNewCtx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeDhNewCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeDhNewCtx(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 133, label %11
    i32 131, label %13
    i32 128, label %15
    i32 132, label %17
    i32 130, label %19
    i32 129, label %21
  ]

11:                                               ; preds = %7
  %12 = call i32* (...) @DhNewGroup1()
  store i32* %12, i32** %2, align 8
  br label %24

13:                                               ; preds = %7
  %14 = call i32* (...) @DhNewGroup2()
  store i32* %14, i32** %2, align 8
  br label %24

15:                                               ; preds = %7
  %16 = call i32* (...) @DhNewGroup5()
  store i32* %16, i32** %2, align 8
  br label %24

17:                                               ; preds = %7
  %18 = call i32* (...) @DhNew2048()
  store i32* %18, i32** %2, align 8
  br label %24

19:                                               ; preds = %7
  %20 = call i32* (...) @DhNew3072()
  store i32* %20, i32** %2, align 8
  br label %24

21:                                               ; preds = %7
  %22 = call i32* (...) @DhNew4096()
  store i32* %22, i32** %2, align 8
  br label %24

23:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %6
  %25 = load i32*, i32** %2, align 8
  ret i32* %25
}

declare dso_local i32* @DhNewGroup1(...) #1

declare dso_local i32* @DhNewGroup2(...) #1

declare dso_local i32* @DhNewGroup5(...) #1

declare dso_local i32* @DhNew2048(...) #1

declare dso_local i32* @DhNew3072(...) #1

declare dso_local i32* @DhNew4096(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
