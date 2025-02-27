; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_sin6_set_embedded_ifscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_sin6_set_embedded_ifscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i32)* @sin6_set_embedded_ifscope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sin6_set_embedded_ifscope(%struct.sockaddr* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %6 = call i32 @ASSERT_SIN6IFSCOPE(%struct.sockaddr* %5)
  %7 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %8 = call %struct.TYPE_3__* @SIN6(%struct.sockaddr* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @IN6_IS_SCOPE_EMBED(%struct.TYPE_4__* %9)
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %15 = call %struct.TYPE_3__* @SIN6(%struct.sockaddr* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %13, i32* %19, align 4
  ret void
}

declare dso_local i32 @ASSERT_SIN6IFSCOPE(%struct.sockaddr*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IN6_IS_SCOPE_EMBED(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_3__* @SIN6(%struct.sockaddr*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
