; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_AddRandomBot.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_AddRandomBot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@g_numBots = common dso_local global i32 0, align 4
@g_botInfos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@g_maxclients = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@TEAM_RED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@TEAM_BLUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXEC_INSERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"addbot %s %f %s %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_AddRandomBot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [36 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %84, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @g_numBots, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load i32*, i32** @g_botInfos, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @Info_ValueForKey(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %73, %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_maxclients, i32 0, i32 0), align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %22
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %29
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %10, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CON_CONNECTED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %73

38:                                               ; preds = %26
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SVF_BOT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %73

52:                                               ; preds = %38
  %53 = load i32, i32* %2, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %73

63:                                               ; preds = %55, %52
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @Q_stricmp(i8* %64, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %62, %51, %37
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %22

76:                                               ; preds = %71, %22
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_maxclients, i32 0, i32 0), align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %11

87:                                               ; preds = %11
  %88 = call i32 (...) @random()
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %193, %87
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @g_numBots, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %196

95:                                               ; preds = %91
  %96 = load i32*, i32** @g_botInfos, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @Info_ValueForKey(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %101, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %153, %95
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_maxclients, i32 0, i32 0), align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %156

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %10, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CON_CONNECTED, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %153

118:                                              ; preds = %106
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SVF_BOT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %118
  br label %153

132:                                              ; preds = %118
  %133 = load i32, i32* %2, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %153

143:                                              ; preds = %135, %132
  %144 = load i8*, i8** %7, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @Q_stricmp(i8* %144, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %143
  br label %156

152:                                              ; preds = %143
  br label %153

153:                                              ; preds = %152, %142, %131, %117
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %102

156:                                              ; preds = %151, %102
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_maxclients, i32 0, i32 0), align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %192

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %160
  %166 = call float @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store float %166, float* %6, align 4
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @TEAM_RED, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %178

171:                                              ; preds = %165
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @TEAM_BLUE, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %177

176:                                              ; preds = %171
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %170
  %179 = getelementptr inbounds [36 x i8], [36 x i8]* %8, i64 0, i64 0
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @strncpy(i8* %179, i8* %180, i32 35)
  %182 = getelementptr inbounds [36 x i8], [36 x i8]* %8, i64 0, i64 35
  store i8 0, i8* %182, align 1
  %183 = getelementptr inbounds [36 x i8], [36 x i8]* %8, i64 0, i64 0
  %184 = call i32 @Q_CleanStr(i8* %183)
  %185 = load i32, i32* @EXEC_INSERT, align 4
  %186 = getelementptr inbounds [36 x i8], [36 x i8]* %8, i64 0, i64 0
  %187 = load float, float* %6, align 4
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %186, float %187, i8* %188, i32 0)
  %190 = call i32 @trap_SendConsoleCommand(i32 %185, i32 %189)
  br label %196

191:                                              ; preds = %160
  br label %192

192:                                              ; preds = %191, %156
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %91

196:                                              ; preds = %178, %91
  ret void
}

declare dso_local i8* @Info_ValueForKey(i32, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local float @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @Q_CleanStr(i8*) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i32) #1

declare dso_local i32 @va(i8*, i8*, float, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
